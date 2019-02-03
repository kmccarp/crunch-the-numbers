///@param <level> {int} 

var level = argument0;
var coefficients = array_create(5);
coefficients[0] = 1.4;
coefficients[1] = -0.429;
coefficients[2] = -1.68;
coefficients[3] = 0.75;

var sum = 0;
for(var i = 0; i < array_length_1d(coefficients); i++) {
	sum += coefficients[i] * power(level, i);
}

return sum;

