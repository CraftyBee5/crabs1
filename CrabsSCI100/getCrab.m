

function retval = getCrab (input1, input2)



%left side
captPt1 = [captSize;captSize;1]; % left shoulder
%captPt2=[-captSize;captSize;1]; % left waist
captPt3=[-3*captSize;captSize;1]; %left foot

%right side
captPt4=[-3*captSize;-captSize;1];%right foot
%captPt5=[-captSize;-captSize;1]; %right waist
captPt6=[captSize;-captSize;1]; %right shoulder

%head
%captPt7 = [ captSize; -captSize/2; 1]; %right neck
%captPt8 = [ 2 *captSize; -captSize/2; 1]; %right top of head
%captPt9 = [ 2*captSize; captSize/2; 1]; %left top of head
%captPt10 = [ captSize; captSize/2; 1]; %left neck

%hands
%captPt11 = [ 0; 2*captSize; 1]; %left hand
%captPt12 = [ 0; -2*captSize; 1]; %right hand

%spear
%captPt13=[ 3*captSize; -2*captSize; 1]; %spear point
%captPt14=[ -captSize; -2*captSize; 1]; %spear end

captPt15=[ 3*captSize; 2*captSize; 1]; %spear point other side
captPt16=[ -captSize; 2*captSize; 1]; %spear end other side

%elbows
%captPt17=[-0.75*captSize;1.5*captSize;1]; %right elbow
%captPt18=[-0.75*captSize;-1.5*captSize;1]; %left elbow





crab=[captPt1,captPt2,captPt3,captPt4,captPt5,captPt6,captPt7,captPt8,captPt9,captPt10,captPt11,captPt12,captPt13,captPt14]; %,captPt15,captPt16,captPt17,captPt18];





endfunction
