% Simscape(TM) Multibody(TM) version: 4.8

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(7).translation = [0.0 0.0 0.0];
smiData.RigidTransform(7).angle = 0.0;
smiData.RigidTransform(7).axis = [0.0 0.0 0.0];
smiData.RigidTransform(7).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [-88 130.99999999999997 -61];  % mm
smiData.RigidTransform(1).angle = 0;  % rad
smiData.RigidTransform(1).axis = [0 0 0];
smiData.RigidTransform(1).ID = 'B[S5_ARM1-1:-:S5_ARM2-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [9.3436369752453174e-13 -1.1510792319313623e-12 -63];  % mm
smiData.RigidTransform(2).angle = 2.2887833992611182e-16;  % rad
smiData.RigidTransform(2).axis = [0.71890023789864099 -0.69511326267686591 -5.7187208985070475e-17];
smiData.RigidTransform(2).ID = 'F[S5_ARM1-1:-:S5_ARM2-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 -6.9388939039072284e-13 -192.5];  % mm
smiData.RigidTransform(3).angle = 3.4914813388431334e-15;  % rad
smiData.RigidTransform(3).axis = [-1 0 -0];
smiData.RigidTransform(3).ID = 'B[S5_BASE-1:-:S5_ARM1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [2.4233807008389483e-27 -188.00000000000068 -2.8421709430404007e-14];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(4).axis = [-0.57735026918962584 -0.57735026918962573 -0.57735026918962573];
smiData.RigidTransform(4).ID = 'F[S5_BASE-1:-:S5_ARM1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 310.00000000000006 -71];  % mm
smiData.RigidTransform(5).angle = 0;  % rad
smiData.RigidTransform(5).axis = [0 0 0];
smiData.RigidTransform(5).ID = 'B[S5_ARM2-1:-:S5_ARM3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-1.5361891567409804e-12 -2.4158453015843406e-13 -73.000000000000057];  % mm
smiData.RigidTransform(6).angle = 1.3814633640175944e-16;  % rad
smiData.RigidTransform(6).axis = [0.99353381639296767 -0.11353658301897676 -7.7916215404637224e-18];
smiData.RigidTransform(6).ID = 'F[S5_ARM2-1:-:S5_ARM3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [9.237352164878601 49.998469383552013 210.49490074400137];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = 'RootGround[S5_BASE-1]';


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
smiData.Solid(1).mass = 5.3701264931444914;  % kg
smiData.Solid(1).CoM = [7.8030580764583695 136.04887076360691 2.1226629906909733];  % mm
smiData.Solid(1).MoI = [87244.027683960026 35241.483877061313 61682.245544138052];  % kg*mm^2
smiData.Solid(1).PoI = [733.1100271359918 -28.531514145040884 -405.65477022909806];  % kg*mm^2
smiData.Solid(1).color = [1 1 1];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'S5_ARM2*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 5.9305784992918182;  % kg
smiData.Solid(2).CoM = [-10.767328775065327 -0.22775885648831148 -106.05466124641468];  % mm
smiData.Solid(2).MoI = [31508.550862891261 35978.220812381202 29404.213916917306];  % kg*mm^2
smiData.Solid(2).PoI = [-57.023160817414713 -363.57468745226538 -120.76037152139918];  % kg*mm^2
smiData.Solid(2).color = [1 1 1];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'S5_BASE*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 2.619563686431849;  % kg
smiData.Solid(3).CoM = [12.699884328564302 17.930375642989414 -1.0794117975430566];  % mm
smiData.Solid(3).MoI = [7294.1602475928185 8125.268631680794 9019.8688763266964];  % kg*mm^2
smiData.Solid(3).PoI = [-33.654425503898729 -26.773504418132241 809.51782513045418];  % kg*mm^2
smiData.Solid(3).color = [1 1 1];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'S5_ARM3*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 3.0910247120214596;  % kg
smiData.Solid(4).CoM = [-39.94992715971577 78.642782866133629 -1.7991591169871093];  % mm
smiData.Solid(4).MoI = [12617.096769002597 13813.15144931937 18010.153313706058];  % kg*mm^2
smiData.Solid(4).PoI = [344.21357768036728 -295.26823603951152 5575.5036917874086];  % kg*mm^2
smiData.Solid(4).color = [1 1 1];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'S5_ARM1*:*Default';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(3).Rz.Pos = 0.0;
smiData.RevoluteJoint(3).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 59.999999999999744;  % deg
smiData.RevoluteJoint(1).ID = '[S5_ARM1-1:-:S5_ARM2-1]';

smiData.RevoluteJoint(2).Rz.Pos = 90.000000000000398;  % deg
smiData.RevoluteJoint(2).ID = '[S5_BASE-1:-:S5_ARM1-1]';

smiData.RevoluteJoint(3).Rz.Pos = -60.000000000000746;  % deg
smiData.RevoluteJoint(3).ID = '[S5_ARM2-1:-:S5_ARM3-1]';

