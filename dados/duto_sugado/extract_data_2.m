% extract_data_2

close all;
clear('all');
clc;

s = hgload('davis_loa.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
machs_simulation(1:6) = 0;
for mach = 1:6
	e = x{7 - mach};
	machs_simulation(mach) = e;
end
machs_simulation = machs_simulation(machs_simulation <= 0.2);
machs_analytical = x(7);
machs_analytical = machs_analytical{1};
machs_analytical = machs_analytical(machs_analytical <= 0.2);
y = get(h,'ydata');
result_simulation(1:6) = 0;
for mach = 1:6
	e = y{7 - mach};
	result_simulation(mach) = e;
end
result_simulation = result_simulation(1:length(machs_simulation));
result_analytical = y{7};
result_analytical = result_analytical(1:length(machs_analytical));

close all;

result_simulation_interp = interp1(machs_simulation,result_simulation,machs_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(2) = result_analytical(2);
result_simulation_interp(end) = result_simulation(end);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation = abs(correlation(1,2));

davis_simulation_loa = [machs_analytical' result_simulation_interp'];
save('davis_simulation_loa.txt', 'davis_simulation_loa', '-ascii', '-double');

davis_analytical_loa = [machs_analytical' result_analytical'];
save('davis_analytical_loa.txt', 'davis_analytical_loa', '-ascii', '-double');
