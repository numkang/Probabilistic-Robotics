#include "motion.hpp"

#define SIGMA_R1 0.03 //0.06
#define SIGMA_R2 0.1 //0.06
#define SIGMA_THETA RAD(60)

using namespace std;
random_device rd_m;
mt19937 mt_m(rd_m());

float sigma_R_calc(state_type state, Vector3d p1, Vector3d p2, Vector3d p3){
	float z[3], err, z_min, sigma_R = SIGMA_R1;
	z_calc(z, state, p1, p2, p3);
	z_min = z[0];
	for(int i = 1; i < 3; i++){
		if(z[i] < z_min){
			z_min = z[i];
		}
	}

	if(z_min > 0.9*MAX_RANGE){
		sigma_R = SIGMA_R2;
	}

	return sigma_R;
}

state_type sample_motion_model(state_type p_state, Vector3d p1, Vector3d p2, Vector3d p3)
{
	state_type state;
	float r, theta, sigma_R = SIGMA_R1;
	normal_distribution<float> distr;
	sigma_R = sigma_R_calc(p_state, p1, p2, p3);

	float mR = 0.0, sigma_theta = SIGMA_THETA;
	// if(sigma_R == SIGMA_R2){
	// 	mR = 0.75*MAX_RANGE;
	// } 

	distr.param(normal_distribution<float>::param_type(mR, sigma_R));
	r = distr(mt_m);

	distr.param(normal_distribution<float>::param_type(0.0, sigma_theta));
	theta = distr(mt_m);

	state.x = p_state.x + r*cos(p_state.theta + theta);
	state.y = p_state.y + r*sin(p_state.theta + theta);
	state.theta = p_state.theta + theta;

	state = motion_constraint(state, p_state, p1, p2, p3); //check if the particles are in the UAVs' eye sight

	return state;
}

state_type motion_constraint(state_type state, state_type p_state, Vector3d p1, Vector3d p2, Vector3d p3){
	state_type state_temp;
	float z1, z2, z3, theta1, theta2, theta3;
	z1 = sqrt(pow(state.x - p1(0), 2) + pow(state.y - p1(1), 2));
	z2 = sqrt(pow(state.x - p2(0), 2) + pow(state.y - p2(1), 2));
	z3 = sqrt(pow(state.x - p3(0), 2) + pow(state.y - p3(1), 2));

	theta1 = atan2(state.y - p1(1), state.x - p1(0));
	if(theta1 < RAD(0)) theta1 += RAD(360);
	theta1 = theta1 - p1(2) + RAD(SENSOR_VIEW/2);

	theta2 = atan2(state.y - p2(1), state.x - p2(0));
	if(theta2 < RAD(0)) theta2 += RAD(360);
	theta2 = theta2 - p2(2) + RAD(SENSOR_VIEW/2);

	theta3 = atan2(state.y - p3(1), state.x - p3(0));
	if(theta3 < RAD(0)) theta3 += RAD(360);
	theta3 = theta3 - p3(2) + RAD(SENSOR_VIEW/2);

	if(z1 <= MAX_RANGE){
		if(theta1 >= RAD(0) && theta1 <= RAD(SENSOR_VIEW)){
			state_temp = state;
		}else{
			state_temp = p_state;
		}
	}else if(z2 <= MAX_RANGE){
		if(theta2 >= RAD(0) && theta2 <= RAD(SENSOR_VIEW)){
			state_temp = state;
		}else{
			state_temp = p_state;
		}
	}else if(z3 <= MAX_RANGE){
		if(theta3 >= RAD(0) && theta3 <= RAD(SENSOR_VIEW)){
			state_temp = state;
		}else{
			state_temp = p_state;
		}
	}else{
		state_temp = p_state;
	}

	return state_temp;
}

	////////////////////////////////////////////////////////////////////////

/*#include "motion.hpp"

#define MEAN_R_MIN 0.0 //0.06
#define MEAN_R_MAX 0.5*MAX_RANGE
#define MEAN_THETA_MIN RAD(0)
#define MEAN_THETA_MAX RAD(0)
#define SIGMA_R_MIN 0.03 //0.06
#define SIGMA_R_MAX 0.08
#define SIGMA_THETA_MIN RAD(30)
#define SIGMA_THETA_MAX RAD(30)
#define THRESHOLD_RANGE 0.9*MAX_RANGE

using namespace std;
random_device rd_m;
mt19937 mt_m(rd_m());

float step(float x, float y1, float y2){
	float y = y1;
	if(x > THRESHOLD_RANGE){
		y = y2;
	}
	return y;
}

float linear(float x, float y1, float y2){
	float y = y1;

	// y = a1*x + a0
	if(x > THRESHOLD_RANGE){
		y = (x - THRESHOLD_RANGE)*(y2 - y1)/(MAX_RANGE - THRESHOLD_RANGE) + y1;
	}
	return y;
}

float square(float x, float y1, float y2){
	float y = y1, a0, a1, a2 = 1; //pick a2

	// y = a2*x^2 + a1*x + a0
	if(x > THRESHOLD_RANGE){
		a1 = ((y2-y1)-a2*(MAX_RANGE*MAX_RANGE-THRESHOLD_RANGE*THRESHOLD_RANGE))/(MAX_RANGE-THRESHOLD_RANGE);
		a0 = y2 - a2*MAX_RANGE*MAX_RANGE - a1*MAX_RANGE;
		y = a2*x*x + a1*x + a0;
	}
	return y;
}

void sigma_mean_calc(state_type state, Vector3d p1, Vector3d p2, Vector3d p3, float *mean_R, float *sigma_R, float *mean_theta, float *sigma_theta){
	float z[3], z_min, Mean_R, Sigma_R, Mean_theta, Sigma_theta;
	z_calc(z, state, p1, p2, p3);
	z_min = z[0];
	for(int i = 1; i < 3; i++){
		if(z[i] < z_min){
			z_min = z[i]; //closest observer
		}
	}

	// Pick one function for each mean, sigma of R and theta
	Mean_R = MEAN_R_MIN; //constant
	// Mean_R = step(z_min, MEAN_R_MIN, MEAN_R_MAX); //step
	// Mean_R = linear(z_min, MEAN_R_MIN, MEAN_R_MAX); //linear
	// Mean_R  = square(z_min, MEAN_R_MIN, MEAN_R_MAX); //square

	// Sigma_R = SIGMA_R_MIN; //constant
	// Sigma_R = step(z_min, SIGMA_R_MIN, SIGMA_R_MAX); //step
	// Sigma_R = linear(z_min, SIGMA_R_MIN, SIGMA_R_MAX); //linear
	Sigma_R  = square(z_min, SIGMA_R_MIN, SIGMA_R_MAX); //square

	Mean_theta = MEAN_R_MIN; //constant
	// Mean_theta = step(z_min, MEAN_THETA_MIN, MEAN_THETA_MAX); //step
	// Mean_theta = linear(z_min, MEAN_THETA_MIN, MEAN_THETA_MAX); //linear
	// Mean_theta  = square(z_min, MEAN_THETA_MIN, MEAN_THETA_MAX); //square

	Sigma_theta = SIGMA_R_MIN; //constant
	// Sigma_theta = step(z_min, SIGMA_THETA_MIN, SIGMA_THETA_MAX); //step
	// Sigma_theta = linear(z_min, SIGMA_THETA_MIN, SIGMA_THETA_MAX); //linear
	// Sigma_theta  = square(z_min, SIGMA_THETA_MIN, SIGMA_THETA_MAX); //square

	*mean_R = Mean_R;
	*sigma_R = Sigma_R;
	*mean_theta = Mean_theta;
	*sigma_theta = Sigma_theta;
}

state_type sample_motion_model(state_type p_state, Vector3d p1, Vector3d p2, Vector3d p3)
{
	state_type state;
	float r, theta;
	float mean_R, sigma_R, mean_theta, sigma_theta;
	normal_distribution<float> distr;

	sigma_mean_calc(p_state, p1, p2, p3, &mean_R, &sigma_R, &mean_theta, &sigma_theta);

	distr.param(normal_distribution<float>::param_type(mean_R, sigma_R));
	r = distr(mt_m);

	distr.param(normal_distribution<float>::param_type(mean_theta, sigma_theta));
	theta = distr(mt_m);

	state.x = p_state.x + r*cos(p_state.theta + theta);
	state.y = p_state.y + r*sin(p_state.theta + theta);
	state.theta = p_state.theta + theta;

	state = motion_constraint(state, p_state, p1, p2, p3); //check if the particles are in the UAVs' eye sight

	return state;
}

state_type motion_constraint(state_type state, state_type p_state, Vector3d p1, Vector3d p2, Vector3d p3){
	state_type state_temp;
	float z1, z2, z3, theta1, theta2, theta3;
	z1 = sqrt(pow(state.x - p1(0), 2) + pow(state.y - p1(1), 2));
	z2 = sqrt(pow(state.x - p2(0), 2) + pow(state.y - p2(1), 2));
	z3 = sqrt(pow(state.x - p3(0), 2) + pow(state.y - p3(1), 2));

	theta1 = atan2(state.y - p1(1), state.x - p1(0));
	if(theta1 < RAD(0)) theta1 += RAD(360);
	theta1 = theta1 - p1(2) + RAD(SENSOR_VIEW/2);

	theta2 = atan2(state.y - p2(1), state.x - p2(0));
	if(theta2 < RAD(0)) theta2 += RAD(360);
	theta2 = theta2 - p2(2) + RAD(SENSOR_VIEW/2);

	theta3 = atan2(state.y - p3(1), state.x - p3(0));
	if(theta3 < RAD(0)) theta3 += RAD(360);
	theta3 = theta3 - p3(2) + RAD(SENSOR_VIEW/2);

	if(z1 <= MAX_RANGE){
		if(theta1 >= RAD(0) && theta1 <= RAD(SENSOR_VIEW)){
			state_temp = state;
		}else{
			state_temp = p_state;
		}
	}else if(z2 <= MAX_RANGE){
		if(theta2 >= RAD(0) && theta2 <= RAD(SENSOR_VIEW)){
			state_temp = state;
		}else{
			state_temp = p_state;
		}
	}else if(z3 <= MAX_RANGE){
		if(theta3 >= RAD(0) && theta3 <= RAD(SENSOR_VIEW)){
			state_temp = state;
		}else{
			state_temp = p_state;
		}
	}else{
		state_temp = p_state;
	}

	return state_temp;
}*/