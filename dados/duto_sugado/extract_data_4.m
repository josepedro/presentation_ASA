% extract data loa

close all;
clear('all');
clc;

s = hgload('loa_sugado_strouhal.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
y = get(h,'ydata');

close all;

% strouhal_numbers = x{15};
% strouhal_numbers = strouhal_numbers(strouhal_numbers <= 20);
% loa_strouhal = y{15};
% loa_strouhal = loa_strouhal(1:length(strouhal_numbers));
% loa_strouhal = downsample(loa_strouhal, 10);
% strouhal_numbers = downsample(strouhal_numbers, 10);
% loa_001_strouhal = [strouhal_numbers' loa_strouhal'];
% save('loa_001_strouhal.txt', 'loa_001_strouhal', '-ascii', '-double');

%====================================================================

strouhal_numbers = x{15};
strouhal_numbers = strouhal_numbers(strouhal_numbers <= 20);
loa_strouhal = y{15};
loa_strouhal = loa_strouhal(1:length(strouhal_numbers));

loa_strouhal_mach(1,1) = 0.05;
strouhals = strouhal_numbers;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]));
strouhal_near = strouhals(b);
strouhals = strouhal_numbers;
loa_strouhal_mach(1,2) = loa_strouhal(strouhals == strouhal_near);

loa_strouhal = downsample(loa_strouhal, 10);
strouhal_numbers = downsample(strouhal_numbers, 10);
loa_005_strouhal = [strouhal_numbers' loa_strouhal'];
save('loa_005_strouhal.txt', 'loa_005_strouhal', '-ascii', '-double');

%====================================================================

strouhal_numbers = x{14};
strouhal_numbers = strouhal_numbers(strouhal_numbers <= 20);
loa_strouhal = y{14};
loa_strouhal = loa_strouhal(1:length(strouhal_numbers));

loa_strouhal_mach(2,1) = 0.07;
strouhals = strouhal_numbers;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]));
strouhal_near = strouhals(b);
strouhals = strouhal_numbers;
loa_strouhal_mach(2,2) = loa_strouhal(strouhals == strouhal_near);

loa_strouhal = downsample(loa_strouhal, 10);
strouhal_numbers = downsample(strouhal_numbers, 10);
loa_007_strouhal = [strouhal_numbers' loa_strouhal'];
save('loa_007_strouhal.txt', 'loa_007_strouhal', '-ascii', '-double');

%====================================================================

strouhal_numbers = x{13};
strouhal_numbers = strouhal_numbers(strouhal_numbers <= 20);
loa_strouhal = y{13};
loa_strouhal = loa_strouhal(1:length(strouhal_numbers));

loa_strouhal_mach(3,1) = 0.1;
strouhals = strouhal_numbers;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]));
strouhal_near = strouhals(b);
strouhals = strouhal_numbers;
loa_strouhal_mach(3,2) = loa_strouhal(strouhals == strouhal_near);

loa_strouhal = downsample(loa_strouhal, 10);
strouhal_numbers = downsample(strouhal_numbers, 10);
loa_010_strouhal = [strouhal_numbers' loa_strouhal'];
save('loa_010_strouhal.txt', 'loa_010_strouhal', '-ascii', '-double');

%====================================================================

strouhal_numbers = x{12};
strouhal_numbers = strouhal_numbers(strouhal_numbers <= 20);
loa_strouhal = y{12};
loa_strouhal = loa_strouhal(1:length(strouhal_numbers));

loa_strouhal_mach(4,1) = 0.15;
strouhals = strouhal_numbers;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]));
strouhal_near = strouhals(b);
strouhals = strouhal_numbers;
loa_strouhal_mach(4,2) = loa_strouhal(strouhals == strouhal_near);

loa_strouhal = downsample(loa_strouhal, 10);
strouhal_numbers = downsample(strouhal_numbers, 10);
loa_015_strouhal = [strouhal_numbers' loa_strouhal'];
save('loa_015_strouhal.txt', 'loa_015_strouhal', '-ascii', '-double');

%====================================================================

strouhal_numbers = x{11};
strouhal_numbers = strouhal_numbers(strouhal_numbers <= 20);
loa_strouhal = y{11};
loa_strouhal = loa_strouhal(1:length(strouhal_numbers));

loa_strouhal_mach(5,1) = 0.20;
strouhals = strouhal_numbers;
strouhal_major = strouhals(strouhals >= pi/2);
strouhal_major = strouhal_major(1);
strouhal_minor = strouhals(strouhals <= pi/2);
strouhal_minor = strouhal_minor(end);
strouhals = [strouhal_minor strouhal_major];
[a b] = min(abs([(strouhal_minor - pi/2),(strouhal_major - pi/2)]));
strouhal_near = strouhals(b);
strouhals = strouhal_numbers;
loa_strouhal_mach(5,2) = loa_strouhal(strouhals == strouhal_near);

loa_strouhal = downsample(loa_strouhal, 10);
strouhal_numbers = downsample(strouhal_numbers, 10);
loa_020_strouhal = [strouhal_numbers' loa_strouhal'];
save('loa_020_strouhal.txt', 'loa_020_strouhal', '-ascii', '-double');

%====================================================================
save('loa_strouhal_mach.txt', 'loa_strouhal_mach', '-ascii', '-double');
