% how to extract data from .fig

% s=hgload('impedance.fig');
% h = findobj(s,'Type','line');
% x=get(h,'xdata');
% y=get(h,'ydata');

% save('kas.txt', 'kas', '-ascii', '-double');
% save('coeficiente_reflexao_anecoica/kas.txt', 'kas', '-ascii', '-double');
% D_imag = y{17};
% save('coeficiente_reflexao_anecoica/D_imag.txt', 'D_imag', '-ascii', '-double');
% D_real = y{18};
% save('coeficiente_reflexao_anecoica/D_real.txt', 'D_real', '-ascii', '-double');
% C_imag = y{19};
% save('coeficiente_reflexao_anecoica/C_imag.txt', 'C_imag', '-ascii', '-double');
% C_real = y{20};
% save('coeficiente_reflexao_anecoica/C_real.txt', 'C_real', '-ascii', '-double');
% B_imag = y{21};
% save('coeficiente_reflexao_anecoica/B_imag.txt', 'B_imag', '-ascii', '-double');
% B_real = y{22};
% save('coeficiente_reflexao_anecoica/B_real.txt', 'B_real', '-ascii', '-double');
% A_imag = y{23};
% save('coeficiente_reflexao_anecoica/A_imag.txt', 'A_imag', '-ascii', '-double');
% A_real = y{24};
% save('coeficiente_reflexao_anecoica/A_real.txt', 'A_real', '-ascii', '-double');

a = y{24};
A_real = [kas(find(kas < 2.5))' a(find(kas < 2.5))'];
save('A_real.txt', 'A_real', '-ascii', '-double');

a = y{23};
A_imag = [kas(find(kas < 2.5))' a(find(kas < 2.5))'];
save('A_imag.txt', 'A_imag', '-ascii', '-double');

a = y{22};
B_real = [kas(find(kas < 2.5))' a(find(kas < 2.5))'];
save('B_real.txt', 'B_real', '-ascii', '-double');

a = y{21};
B_imag = [kas(find(kas < 2.5))' a(find(kas < 2.5))'];
save('B_imag.txt', 'B_imag', '-ascii', '-double');

a = y{20};
C_real = [kas(find(kas < 2.5))' a(find(kas < 2.5))'];
save('C_real.txt', 'C_real', '-ascii', '-double');

a = y{19};
C_imag = [kas(find(kas < 2.5))' a(find(kas < 2.5))'];
save('C_imag.txt', 'C_imag', '-ascii', '-double');

a = y{18};
D_real = [kas(find(kas < 2.5))' a(find(kas < 2.5))'];
save('D_real.txt', 'D_real', '-ascii', '-double');

a = y{17};
D_imag = [kas(find(kas < 2.5))' a(find(kas < 2.5))'];
save('D_imag.txt', 'D_imag', '-ascii', '-double');

%-------------------------

a = yabs{12};
A_abs = [kas(find(kas < 2.5))' a(find(kas < 2.5))'];
save('A_abs.txt', 'A_abs', '-ascii', '-double');

a = yabs{11};
B_abs = [kas(find(kas < 2.5))' a(find(kas < 2.5))'];
save('B_abs.txt', 'B_abs', '-ascii', '-double');

a = yabs{10};
C_abs = [kas(find(kas < 2.5))' a(find(kas < 2.5))'];
save('C_abs.txt', 'C_abs', '-ascii', '-double');

a = yabs{9};
D_abs = [kas(find(kas < 2.5))' a(find(kas < 2.5))'];
save('D_abs.txt', 'D_abs', '-ascii', '-double');