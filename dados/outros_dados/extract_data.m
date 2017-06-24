% extract data

clear('all'); close all; clc;

s = hgload('abs_r.fig');
h = findobj(s,'Type','line');
kas_LS = get(h,'xdata');
abs_r_LS = get(h,'ydata');
close all;

abs_r_LS = [kas_LS' abs_r_LS'];
save('abs_r_LS.txt', 'abs_r_LS', '-ascii', '-double');

%====================================================
clear('all'); close all; clc;

s = hgload('abs_r_015.fig');
h = findobj(s,'Type','line');
kas_munt = get(h,'xdata');
abs_r_munt = get(h,'ydata');
close all;

abs_r_munt = [kas_munt' abs_r_munt'];
save('abs_r_munt.txt', 'abs_r_munt', '-ascii', '-double');

%====================================================

clear('all'); close all; clc;

s = hgload('loa.fig');
h = findobj(s,'Type','line');
kas_LS = get(h,'xdata');
loa_LS = get(h,'ydata');
close all;

loa_LS = [kas_LS' loa_LS'];
save('loa_LS.txt', 'loa_LS', '-ascii', '-double');

%====================================================
clear('all'); close all; clc;

s = hgload('loa_015.fig');
h = findobj(s,'Type','line');
kas_munt = get(h,'xdata');
kas_munt = kas_munt{3};
loa_munt = get(h,'ydata');
loa_munt = loa_munt{3};
close all;

loa_munt = [kas_munt' loa_munt'];
save('loa_munt.txt', 'loa_munt', '-ascii', '-double');

%====================================================