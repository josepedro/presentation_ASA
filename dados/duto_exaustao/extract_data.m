% extract data
close all;
%clear('all');
clc;

s = hgload('abs_r_020.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
kas_simulation = x{1};
kas_simulation = kas_simulation(kas_simulation <= 1.8);
kas_analytical = x{2};
kas_analytical = kas_analytical(kas_analytical <= 1.8);
y = get(h,'ydata');
result_simulation = y{1};
result_simulation = result_simulation(1:length(kas_simulation));
result_analytical = y{2};
result_analytical = result_analytical(1:length(kas_analytical));

close all;

result_simulation_interp = interp1(kas_simulation,result_simulation,kas_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(end) = result_simulation(end);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation = correlation(1,2);

abs_r_020_simulation = [kas_analytical' result_simulation_interp'];
save('abs_r_020_simulation.txt', 'abs_r_020_simulation', '-ascii', '-double');
abs_r_020_analytical = [kas_analytical' result_analytical'];
save('abs_r_020_analytical.txt', 'abs_r_020_analytical', '-ascii', '-double');

factor_st = 0.26;
%factor_st = 0.2;
abs_r_020_simulation_strouhal = [(kas_analytical/factor_st)' result_simulation_interp'];
save('abs_r_020_simulation_strouhal.txt', 'abs_r_020_simulation_strouhal', '-ascii', '-double');

abs_r_strouhal_mach(4,1) = 0.2;
strouhals = kas_analytical/factor_st;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]))
strouhal_near = strouhals(b);
strouhals = kas_analytical/factor_st;
abs_r_strouhal_mach(4,2) = result_simulation_interp(strouhals == strouhal_near);

% -------------------------------------------------------------------------

close all;
%clear('all');
clc;

s = hgload('loa_020.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
kas_simulation = x{3};
kas_simulation = kas_simulation(kas_simulation <= 1.8);
kas_analytical = x{4};
kas_analytical = kas_analytical(kas_analytical <= 1.8);
y = get(h,'ydata');
result_simulation = y{3};
result_simulation = result_simulation(1:length(kas_simulation));
result_analytical = y{4};
result_analytical = result_analytical(1:length(kas_analytical));

close all;

result_simulation_interp = interp1(kas_simulation,result_simulation,kas_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(end) = result_simulation(end);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation = correlation(1,2);

loa_020_simulation = [kas_analytical' result_simulation_interp'];
save('loa_020_simulation.txt', 'loa_020_simulation', '-ascii', '-double');
loa_020_analytical = [kas_analytical' result_analytical'];
save('loa_020_analytical.txt', 'loa_020_analytical', '-ascii', '-double');

%--------------------------------------------------------------------------

close all;
%clear('all');
clc;

s = hgload('abs_r_015.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
kas_simulation = x{1};
kas_simulation = kas_simulation(kas_simulation <= 1.8);
kas_analytical = x{2};
kas_analytical = kas_analytical(kas_analytical <= 1.8);
y = get(h,'ydata');
result_simulation = y{1};
result_simulation = result_simulation(1:length(kas_simulation));
result_analytical = y{2};
result_analytical = result_analytical(1:length(kas_analytical));

close all;

result_simulation_interp = interp1(kas_simulation,result_simulation,kas_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(end) = result_simulation(end);
result_simulation_interp(2) = result_simulation(2);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation = correlation(1,2);

abs_r_015_simulation = [kas_analytical' result_simulation_interp'];
save('abs_r_015_simulation.txt', 'abs_r_015_simulation', '-ascii', '-double');
abs_r_015_analytical = [kas_analytical' result_analytical'];
save('abs_r_015_analytical.txt', 'abs_r_015_analytical', '-ascii', '-double');

factor_st = 0.20;
%factor_st = 0.15;
abs_r_015_simulation_strouhal = [(kas_analytical/factor_st)' result_simulation_interp'];
save('abs_r_015_simulation_strouhal.txt', 'abs_r_015_simulation_strouhal', '-ascii', '-double');

abs_r_strouhal_mach(3,1) = 0.15;
strouhals = kas_analytical/factor_st;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]))
strouhal_near = strouhals(b);
strouhals = kas_analytical/factor_st;
abs_r_strouhal_mach(3,2) = result_simulation_interp(strouhals == strouhal_near);

% ================================================================

close all;
%clear('all');
clc;

s = hgload('loa_015.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
kas_simulation = x{3};
kas_simulation = kas_simulation(kas_simulation <= 1.8);
kas_analytical = x{4};
kas_analytical = kas_analytical(kas_analytical <= 1.8);
y = get(h,'ydata');
result_simulation = y{3};
result_simulation = result_simulation(1:length(kas_simulation));
result_analytical = y{4};
result_analytical = result_analytical(1:length(kas_analytical));

close all;

result_simulation_interp = interp1(kas_simulation,result_simulation,kas_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(end) = result_simulation(end);
result_simulation_interp(2) = result_simulation(2);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation = correlation(1,2);

loa_015_simulation = [kas_analytical' result_simulation_interp'];
save('loa_015_simulation.txt', 'loa_015_simulation', '-ascii', '-double');
loa_015_analytical = [kas_analytical' result_analytical'];
save('loa_015_analytical.txt', 'loa_015_analytical', '-ascii', '-double');

% ================================================================

close all;
%clear('all');
clc;

s = hgload('abs_r_010.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
kas_simulation = x{1};
kas_simulation = kas_simulation(kas_simulation <= 1.8);
kas_analytical = x{2};
kas_analytical = kas_analytical(kas_analytical <= 1.8);
y = get(h,'ydata');
result_simulation = y{1};
result_simulation = result_simulation(1:length(kas_simulation));
result_analytical = y{2};
result_analytical = result_analytical(1:length(kas_analytical));

close all;

result_simulation_interp = interp1(kas_simulation,result_simulation,kas_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(end) = result_simulation(end);
result_simulation_interp(2) = result_simulation(2);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation_1 = correlation(1,2)

abs_r_010_simulation = [kas_analytical' result_simulation_interp'];
save('abs_r_010_simulation.txt', 'abs_r_010_simulation', '-ascii', '-double');
abs_r_010_analytical = [kas_analytical' result_analytical'];
save('abs_r_010_analytical.txt', 'abs_r_010_analytical', '-ascii', '-double');

factor_st = 0.14;
%factor_st = 0.1;
abs_r_010_simulation_strouhal = [(kas_analytical/factor_st)' result_simulation_interp'];
save('abs_r_010_simulation_strouhal.txt', 'abs_r_010_simulation_strouhal', '-ascii', '-double');

abs_r_strouhal_mach(2,1) = 0.1;
strouhals = kas_analytical/factor_st;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]))
strouhal_near = strouhals(b);
strouhals = kas_analytical/factor_st;
abs_r_strouhal_mach(2,2) = result_simulation_interp(strouhals == strouhal_near);

% ================================================================

close all;
%clear('all');
%clc;

s = hgload('loa_010.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
kas_simulation = x{3};
kas_simulation = kas_simulation(kas_simulation <= 1.8);
kas_analytical = x{4};
kas_analytical = kas_analytical(kas_analytical <= 1.8);
y = get(h,'ydata');
result_simulation = y{3};
result_simulation = result_simulation(1:length(kas_simulation));
result_analytical = y{4};
result_analytical = result_analytical(1:length(kas_analytical));

close all;

result_simulation_interp = interp1(kas_simulation,result_simulation,kas_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(end) = result_simulation(end);
result_simulation_interp(2) = result_simulation(2);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation_2 = correlation(1,2)

loa_010_simulation = [kas_analytical' result_simulation_interp'];
save('loa_010_simulation.txt', 'loa_010_simulation', '-ascii', '-double');
loa_010_analytical = [kas_analytical' result_analytical'];
save('loa_010_analytical.txt', 'loa_010_analytical', '-ascii', '-double');

% ================================================================

close all;
%clear('all');
clc;

s = hgload('abs_r_007.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
kas_simulation = x{1};
kas_simulation = kas_simulation(kas_simulation <= 1.8);
kas_analytical = x{2};
kas_analytical = kas_analytical(kas_analytical <= 1.8);
y = get(h,'ydata');
result_simulation = y{1};
result_simulation = result_simulation(1:length(kas_simulation));
result_analytical = y{2};
result_analytical = result_analytical(1:length(kas_analytical));

close all;

result_simulation_interp = interp1(kas_simulation,result_simulation,kas_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(end) = result_simulation(end);
result_simulation_interp(2) = result_simulation(2);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation_1 = correlation(1,2)

abs_r_007_simulation = [kas_analytical' result_simulation_interp'];
save('abs_r_007_simulation.txt', 'abs_r_007_simulation', '-ascii', '-double');
abs_r_007_analytical = [kas_analytical' result_analytical'];
save('abs_r_007_analytical.txt', 'abs_r_007_analytical', '-ascii', '-double');

factor_st = 0.1;
%factor_st = 0.07;
abs_r_007_simulation_strouhal = [(kas_analytical/factor_st)' result_simulation_interp'];
save('abs_r_007_simulation_strouhal.txt', 'abs_r_007_simulation_strouhal', '-ascii', '-double');

abs_r_strouhal_mach(1,1) = 0.07;
strouhals = kas_analytical/factor_st;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]))
strouhal_near = strouhals(b);
strouhals = kas_analytical/factor_st;
abs_r_strouhal_mach(1,2) = result_simulation_interp(strouhals == strouhal_near);
save('abs_r_strouhal_mach.txt', 'abs_r_strouhal_mach', '-ascii', '-double');

% ================================================================

close all;
%clear('all');
%clc;

s = hgload('loa_007.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
kas_simulation = x{3};
kas_simulation = kas_simulation(kas_simulation <= 1.8);
kas_analytical = x{4};
kas_analytical = kas_analytical(kas_analytical <= 1.8);
y = get(h,'ydata');
result_simulation = y{3};
result_simulation = result_simulation(1:length(kas_simulation));
result_analytical = y{4};
result_analytical = result_analytical(1:length(kas_analytical));

close all;

result_simulation_interp = interp1(kas_simulation,result_simulation,kas_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(end) = result_simulation(end);
result_simulation_interp(2) = result_simulation(2);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation_2 = correlation(1,2)

loa_007_simulation = [kas_analytical' result_simulation_interp'];
save('loa_007_simulation.txt', 'loa_007_simulation', '-ascii', '-double');
loa_007_analytical = [kas_analytical' result_analytical'];
save('loa_007_analytical.txt', 'loa_007_analytical', '-ascii', '-double');