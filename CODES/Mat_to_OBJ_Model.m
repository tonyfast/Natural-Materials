names = {'hazelnut','ivory','macadamia','pecan','coconut'};

for ii = 1 : 5;
    disp( names{ii} );
%% Download Hazelnut data file
matfile = horzcat(names{ii},'.mat');
urlwrite(horzcat('http://mined.gatech.edu/images/assets/nutshell/',matfile),matfile)
%
%% Load Hazelnut data

load( matfile )

%% Chop it down

[X,Y,Z] = deal( 1:100 );
subvolume = structure(X,Y,Z);

[X,Y,Z] = meshgrid( 1:100 );
FV = MarchingCubesFV( X,Y,Z,subvolume,.5 );
p = patch(FV, 'FaceColor', 'cyan', 'EdgeColor', 'none');
N = isonormals( X,Y,Z,subvolume, p );

%%

  material(1).type='newmtl';
  material(1).data='skin';
  material(2).type='Ka';
  material(2).data=[0.8 0.4 0.4];
  material(3).type='Kd';
  material(3).data=[0.8 0.4 0.4];
  material(4).type='Ks';
  material(4).data=[1 1 1];
  material(5).type='illum';
  material(5).data=2;
  material(6).type='Ns';
  material(6).data=27;

  
  OBJ.vertices = FV.vertices;
  OBJ.vertices_normal = N;
  OBJ.material = material;
  OBJ.objects(1).type='usemtl';
  OBJ.objects(1).data='skin';
  OBJ.objects(2).type='f';
  OBJ.objects(2).data.vertices=FV.faces;
  OBJ.objects(2).data.normal=FV.faces;

  write_wobj( OBJ, horzcat('/Volumes/NO NAME/',names{ii},'.obj') )
  end