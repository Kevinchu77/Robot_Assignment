% Simscape(TM) Multibody(TM) version: 6.1

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(9).translation = [0.0 0.0 0.0];
smiData.RigidTransform(9).angle = 0.0;
smiData.RigidTransform(9).axis = [0.0 0.0 0.0];
smiData.RigidTransform(9).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 -6.9388939039072284e-13 -192.5];  % mm
smiData.RigidTransform(1).angle = 3.4914813388431334e-15;  % rad
smiData.RigidTransform(1).axis = [-1 0 -0];
smiData.RigidTransform(1).ID = 'B[S5_BASE-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [0 -6.9388939039072284e-13 -192.5];  % mm
smiData.RigidTransform(2).angle = 3.4914813388431334e-15;  % rad
smiData.RigidTransform(2).axis = [-1 -0 -0];
smiData.RigidTransform(2).ID = 'F[S5_BASE-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 0 -61];  % mm
smiData.RigidTransform(3).angle = 0;  % rad
smiData.RigidTransform(3).axis = [0 0 0];
smiData.RigidTransform(3).ID = 'B[S5_ARM1-1:-:S5_ARM2-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-309.99999999999886 -3.5953462429461069e-12 -63.000000000000099];  % mm
smiData.RigidTransform(4).angle = 2.8620211357290823e-17;  % rad
smiData.RigidTransform(4).axis = [4.1840961803090067e-13 1 5.9874858509838489e-30];
smiData.RigidTransform(4).ID = 'F[S5_ARM1-1:-:S5_ARM2-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 -6.9388939039072284e-13 -192.5];  % mm
smiData.RigidTransform(5).angle = 3.4914813388431334e-15;  % rad
smiData.RigidTransform(5).axis = [-1 0 -0];
smiData.RigidTransform(5).ID = 'B[S5_BASE-1:-:S5_ARM1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-88.000000000003624 318.99999999999977 1.1368683772161603e-13];  % mm
smiData.RigidTransform(6).angle = 2.0943951023931997;  % rad
smiData.RigidTransform(6).axis = [0.57735026918962706 -0.57735026918962318 0.57735026918962695];
smiData.RigidTransform(6).ID = 'F[S5_BASE-1:-:S5_ARM1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [-1.6653345369377348e-13 0 -71.000000000000014];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = 'B[S5_ARM2-1:-:S5_ARM3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-200.00000000000057 39.999999999998636 -73.000000000000043];  % mm
smiData.RigidTransform(8).angle = 4.4501049740809447e-16;  % rad
smiData.RigidTransform(8).axis = [-0.99792973971763443 -0.064313564565296605 1.4280480035222169e-17];
smiData.RigidTransform(8).ID = 'F[S5_ARM2-1:-:S5_ARM3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 0];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = 'RootGround[S5_BASE-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(4).mass = 0.0;
smiData.Solid(4).CoM = [0.0 0.0 0.0];
smiData.Solid(4).MoI = [0.0 0.0 0.0];
smiData.Solid(4).PoI = [0.0 0.0 0.0];
smiData.Solid(4).color = [0.0 0.0 0.0];
smiData.Solid(4).opacity = 0.0;
smiData.Solid(4).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 5.9305784992918182;  % kg
smiData.Solid(1).CoM = [-10.767328775065327 -0.22775885648831176 -106.05466124641468];  % mm
smiData.Solid(1).MoI = [31508.550862891261 35978.220812381202 29404.213916917306];  % kg*mm^2
smiData.Solid(1).PoI = [-57.02316081741472 -363.57468745226544 -120.76037152139912];  % kg*mm^2
smiData.Solid(1).color = [1 1 1];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'S5_BASE*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 2.7776880267264152;  % kg
smiData.Solid(2).CoM = [-204.52192982018781 20.813331816639881 -1.0179287167184121];  % mm
smiData.Solid(2).MoI = [7398.1729997548182 11427.635409318167 12394.678851639892];  % kg*mm^2
smiData.Solid(2).PoI = [37.176970998296397 3.6474027346978848 1282.2993526117871];  % kg*mm^2
smiData.Solid(2).color = [1 1 1];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'S5_ARM3*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 3.0910247120214605;  % kg
smiData.Solid(3).CoM = [-48.050072840284614 52.357217133866023 -1.7991591169871042];  % mm
smiData.Solid(3).MoI = [12617.096769002519 13813.151449319445 18010.153313706058];  % kg*mm^2
smiData.Solid(3).PoI = [-344.21357768036631 295.2682360395155 5575.5036917873967];  % kg*mm^2
smiData.Solid(3).color = [1 1 1];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'S5_ARM1*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 5.370126493144487;  % kg
smiData.Solid(4).CoM = [-173.95112923639323 -7.8030580764602107 2.12266299069094];  % mm
smiData.Solid(4).MoI = [35241.483877061328 87244.027683960085 61682.245544138095];  % kg*mm^2
smiData.Solid(4).PoI = [28.531514145049723 733.11002713596258 405.65477022856544];  % kg*mm^2
smiData.Solid(4).color = [1 1 1];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'S5_ARM2*:*Default';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(3).Rz.Pos = 0.0;
smiData.RevoluteJoint(3).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = -2.0023540619745047e-13;  % deg
smiData.RevoluteJoint(1).ID = '[S5_ARM1-1:-:S5_ARM2-1]';

smiData.RevoluteJoint(2).Rz.Pos = 90.000000000000398;  % deg
smiData.RevoluteJoint(2).ID = '[S5_BASE-1:-:S5_ARM1-1]';

smiData.RevoluteJoint(3).Rz.Pos = 2.0023540619744458e-13;  % deg
smiData.RevoluteJoint(3).ID = '[S5_ARM2-1:-:S5_ARM3-1]';

