
function Ggesture = LOAD_ALL()
addpath('C:\Users\sabhajit singh\Desktop\learning in robotics\project 3\train')
Train = ('C:\Users\sabhajit singh\Desktop\learning in robotics\project 3\train\train\');
distructTrain =  dir(Train);
distructTrain = distructTrain(3:end);

Ggesture = [];

%---------------------fish-------------------------------------
 i=3;
    gesture = strcat(Train,distructTrain(i).name);
    gesture = strcat(gesture,'\');
    distructGesture  = dir(strcat(gesture,'*'));
    distructGesture = distructGesture (3:end);   
    imuFile = {};

    
    j = 1; 
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(650:end,2:7);
    
    j =2;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(:,2:7);
       
    j =3;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(300:1200,2:7);
       
    j =4;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(300:end,2:7);
       
    j =5;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(380:end,2:7);
  %-----------------------------------circle---------------     
i=1;
    gesture = strcat(Train,distructTrain(i).name);
    gesture = strcat(gesture,'\');
    distructGesture  = dir(strcat(gesture,'*'));
    distructGesture = distructGesture (3:end);   
    imuFile = {};

    j = 1; 
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(100:end,2:7);
    
    j =2;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(100:end,2:7);
       
    j =3;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(100:end,2:7);
       
    j =4;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(100:end,2:7);
       
    j =5;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(100:end,2:7);

%-------------------------------------hammer---------------------------

    i=4;
    gesture = strcat(Train,distructTrain(i).name);
    gesture = strcat(gesture,'\');
    distructGesture  = dir(strcat(gesture,'*'));
    distructGesture = distructGesture (3:end);   
    imuFile = {};

    
    j = 1; 
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(600:end,2:7);
    
    j =2;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(400:end,2:7);
       
    j =3;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(350:end,2:7);
       
    j =4;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(300:end,2:7);
       
    j =5;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(380:end,2:7);
       %---------------------------------------------- gesture figure8---
       
       i=2;
    gesture = strcat(Train,distructTrain(i).name);
    gesture = strcat(gesture,'\');
    distructGesture  = dir(strcat(gesture,'*'));
    distructGesture = distructGesture (3:end);   
    imuFile = {};

    
    j = 1; 
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(650:end,2:7);
    
    j =2;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(400:end,2:7);
       
    j =3;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(300:end,2:7);
       
    j =4;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(300:end,2:7);
       
    j =5;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(380:end,2:7);
       
%-------------------------------------pend---------------------------

    i=5;
    gesture = strcat(Train,distructTrain(i).name);
    gesture = strcat(gesture,'\');
    distructGesture  = dir(strcat(gesture,'*'));
    distructGesture = distructGesture (3:end);   
    imuFile = {};

    
    j = 1; 
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(590:end,2:7);
    
    j =2;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(350:end,2:7);
       
    j =3;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(200:end,2:7);
       
    j =4;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(300:end,2:7);
       
    j =5;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(380:end,2:7);

%-------------------------------------wave---------------------------

    i=6;
    gesture = strcat(Train,distructTrain(i).name);
    gesture = strcat(gesture,'\');
    distructGesture  = dir(strcat(gesture,'*'));
    distructGesture = distructGesture (3:end);   
    imuFile = {};

    
    j = 1; 
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(600:end,2:7);
    
    j =2;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(400:end,2:7);
       
    j =3;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(350:end,2:7);
       
    j =4;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(300:end,2:7);
       
    j =5;
       imufileName = strcat(gesture,distructGesture(j).name);
       imuFile{j} = imufileName;
       Gesture =   load(imuFile{j});
       Ggesture{i,j}= Gesture(380:end,2:7);
save('Gesture_crossV.mat','Ggesture')
