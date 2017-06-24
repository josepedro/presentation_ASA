% extract data Kp

close all;
clear('all');
clc;

s = hgload('abs_r_sugado_Kp.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
y = get(h,'ydata');

close all;

kas = x{15};
kas = kas(kas <= 20);
abs_r_kp = y{15};
abs_r_kp = abs_r_kp(1:length(kas));
abs_r_kp = downsample(abs_r_kp, 10);
kas = downsample(kas, 10);
abs_049_kp = [kas' abs_r_kp'];
save('abs_049_kp.txt', 'abs_049_kp', '-ascii', '-double');

%====================================================================

kas = x{14};
kas = kas(kas <= 20);
abs_r_kp = y{14};
abs_r_kp = abs_r_kp(1:length(kas));
abs_r_kp = downsample(abs_r_kp, 10);
kas = downsample(kas, 10);
abs_059_kp = [kas' abs_r_kp'];
save('abs_059_kp.txt', 'abs_059_kp', '-ascii', '-double');

%====================================================================

kas = x{13};
kas = kas(kas <= 20);
abs_r_kp = y{13};
abs_r_kp = abs_r_kp(1:length(kas));
abs_r_kp = downsample(abs_r_kp, 10);
kas = downsample(kas, 10);
abs_071_kp = [kas' abs_r_kp'];
save('abs_071_kp.txt', 'abs_071_kp', '-ascii', '-double');

%====================================================================

kas = x{12};
kas = kas(kas <= 20);
abs_r_kp = y{12};
abs_r_kp = abs_r_kp(1:length(kas));
abs_r_kp = downsample(abs_r_kp, 10);
kas = downsample(kas, 10);
abs_074_kp = [kas' abs_r_kp'];
save('abs_074_kp.txt', 'abs_074_kp', '-ascii', '-double');

%====================================================================

kas = x{11};
kas = kas(kas <= 20);
abs_r_kp = y{11};
abs_r_kp = abs_r_kp(1:length(kas));
abs_r_kp = downsample(abs_r_kp, 10);
kas = downsample(kas, 10);
abs_075_kp = [kas' abs_r_kp'];
save('abs_075_kp.txt', 'abs_075_kp', '-ascii', '-double');