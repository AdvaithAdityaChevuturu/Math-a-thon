clc
clear
close all

camera=webcam;
nnet=alexnet;
while true
    picture=camera.snapshot;
    picture=imresize(picture,[227,227]);
    label=classify(nnet,picture);
    image(picture);
    title(char(label));
    object_Name=char(label);
    NET.addAssembly('System.Speech');
    obj=System.Speech.Synthesis.SpeechSynthesizer;
    obj.Volume=100;
    Speak(obj,object_Name);
    
    drawnow;
end