% extract data

close all;
clear('all');
clc;

s = hgload('abs_r_sugado_strouhal.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
y = get(h,'ydata');

close all;

strouhal_numbers = x{18};
strouhal_numbers = strouhal_numbers(strouhal_numbers <= 20);
abs_r_strouhal = y{18};
abs_r_strouhal = abs_r_strouhal(1:length(strouhal_numbers));
abs_r_strouhal = downsample(abs_r_strouhal, 10);
strouhal_numbers = downsample(strouhal_numbers, 10);
abs_001_strouhal = [strouhal_numbers' abs_r_strouhal'];
save('abs_001_strouhal.txt', 'abs_001_strouhal', '-ascii', '-double');

%====================================================================

strouhal_numbers = x{17};
strouhal_numbers = strouhal_numbers(strouhal_numbers <= 20);
abs_r_strouhal = y{17};
abs_r_strouhal = abs_r_strouhal(1:length(strouhal_numbers));

abs_r_strouhal_mach(1,1) = 0.05;
strouhals = strouhal_numbers;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]));
strouhal_near = strouhals(b);
strouhals = strouhal_numbers;
abs_r_strouhal_mach(1,2) = abs_r_strouhal(strouhals == strouhal_near);

abs_r_strouhal = downsample(abs_r_strouhal, 10);
strouhal_numbers = downsample(strouhal_numbers, 10);
abs_005_strouhal = [strouhal_numbers' abs_r_strouhal'];
save('abs_005_strouhal.txt', 'abs_005_strouhal', '-ascii', '-double');

%====================================================================

strouhal_numbers = x{16};
strouhal_numbers = strouhal_numbers(strouhal_numbers <= 20);
abs_r_strouhal = y{16};
abs_r_strouhal = abs_r_strouhal(1:length(strouhal_numbers));

abs_r_strouhal_mach(2,1) = 0.07;
strouhals = strouhal_numbers;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]));
strouhal_near = strouhals(b);
strouhals = strouhal_numbers;
abs_r_strouhal_mach(2,2) = abs_r_strouhal(strouhals == strouhal_near);

abs_r_strouhal = downsample(abs_r_strouhal, 10);
strouhal_numbers = downsample(strouhal_numbers, 10);
abs_007_strouhal = [strouhal_numbers' abs_r_strouhal'];
save('abs_007_strouhal.txt', 'abs_007_strouhal', '-ascii', '-double');

%====================================================================

strouhal_numbers = x{15};
strouhal_numbers = strouhal_numbers(strouhal_numbers <= 20);
abs_r_strouhal = y{15};
abs_r_strouhal = abs_r_strouhal(1:length(strouhal_numbers));

abs_r_strouhal_mach(3,1) = 0.1;
strouhals = strouhal_numbers;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]));
strouhal_near = strouhals(b);
strouhals = strouhal_numbers;
abs_r_strouhal_mach(3,2) = abs_r_strouhal(strouhals == strouhal_near);

abs_r_strouhal = downsample(abs_r_strouhal, 10);
strouhal_numbers = downsample(strouhal_numbers, 10);
abs_010_strouhal = [strouhal_numbers' abs_r_strouhal'];
save('abs_010_strouhal.txt', 'abs_010_strouhal', '-ascii', '-double');

%====================================================================

strouhal_numbers = x{14};
strouhal_numbers = strouhal_numbers(strouhal_numbers <= 20);
abs_r_strouhal = y{14};
abs_r_strouhal = abs_r_strouhal(1:length(strouhal_numbers));

abs_r_strouhal_mach(4,1) = 0.15;
strouhals = strouhal_numbers;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]));
strouhal_near = strouhals(b);
strouhals = strouhal_numbers;
abs_r_strouhal_mach(4,2) = abs_r_strouhal(strouhals == strouhal_near);

abs_r_strouhal = downsample(abs_r_strouhal, 10);
strouhal_numbers = downsample(strouhal_numbers, 10);
abs_015_strouhal = [strouhal_numbers' abs_r_strouhal'];
save('abs_015_strouhal.txt', 'abs_015_strouhal', '-ascii', '-double');

%====================================================================

strouhal_numbers = x{13};
strouhal_numbers = strouhal_numbers(strouhal_numbers <= 20);
abs_r_strouhal = y{13};
abs_r_strouhal = abs_r_strouhal(1:length(strouhal_numbers));

abs_r_strouhal_mach(5,1) = 0.20;
strouhals = strouhal_numbers;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]));
strouhal_near = strouhals(b);
strouhals = strouhal_numbers;
abs_r_strouhal_mach(5,2) = abs_r_strouhal(strouhals == strouhal_near);

abs_r_strouhal = downsample(abs_r_strouhal, 10);
strouhal_numbers = downsample(strouhal_numbers, 10);
abs_020_strouhal = [strouhal_numbers' abs_r_strouhal'];
save('abs_020_strouhal.txt', 'abs_020_strouhal', '-ascii', '-double');

%====================================================================
save('abs_r_strouhal_mach.txt', 'abs_r_strouhal_mach', '-ascii', '-double');
