w_pix = 2000; % pix
h_pix = 2000; % pix

pixSizeSample_nm = 69; % nm

powerAfterObjective_mW = 122; % mW


%% Code

% get area in cm^2
w_nm = w_pix*pixSizeSample_nm;
w_um = w_nm/1000;
w_mm = w_um/1000;
w_cm = w_mm/10;

h_nm = h_pix*pixSizeSample_nm;
h_um = h_nm/1000;
h_mm = h_um/1000;
h_cm = h_mm/10;

area_cm2 = w_cm*h_cm;

% get power in kW
powerAfterObjective_W = powerAfterObjective_mW/1000;
powerAfterObjective_kW = powerAfterObjective_W/1000;

% power density
powerDensity = powerAfterObjective_kW/area_cm2;

fprintf('The power density is %.3f kw/cm^2.\n',powerDensity)