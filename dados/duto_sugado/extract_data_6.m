% extract data Kp

close all;
clear('all');
clc;

s = hgload('loa_sugado_Kp.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
y = get(h,'ydata');

close all;

kas = x{15};
kas = kas(kas <= 20);
loa_kp = y{15};
loa_kp = loa_kp(1:length(kas));
loa_kp = downsample(loa_kp, 10);
kas = downsample(kas, 10);
loa_049_kp = [kas' loa_kp'];
save('loa_049_kp.txt', 'loa_049_kp', '-ascii', '-double');

%====================================================================

kas = x{14};
kas = kas(kas <= 20);
loa_kp = y{14};
loa_kp = loa_kp(1:length(kas));
loa_kp = downsample(loa_kp, 10);
kas = downsample(kas, 10);
loa_059_kp = [kas' loa_kp'];
save('loa_059_kp.txt', 'loa_059_kp', '-ascii', '-double');

%====================================================================

kas = x{13};
kas = kas(kas <= 20);
loa_kp = y{13};
loa_kp = loa_kp(1:length(kas));
loa_kp = downsample(loa_kp, 10);
kas = downsample(kas, 10);
loa_071_kp = [kas' loa_kp'];
save('loa_071_kp.txt', 'loa_071_kp', '-ascii', '-double');

%====================================================================

kas = x{12};
kas = kas(kas <= 20);
loa_kp = y{12};
loa_kp = loa_kp(1:length(kas));
loa_kp = downsample(loa_kp, 10);
kas = downsample(kas, 10);
loa_074_kp = [kas' loa_kp'];
save('loa_074_kp.txt', 'loa_074_kp', '-ascii', '-double');

%====================================================================

kas = x{11};
kas = kas(kas <= 20);
loa_kp = y{11};
loa_kp = loa_kp(1:length(kas));
loa_kp = downsample(loa_kp, 10);
kas = downsample(kas, 10);
loa_075_kp = [kas' loa_kp'];
save('loa_075_kp.txt', 'loa_075_kp', '-ascii', '-double');