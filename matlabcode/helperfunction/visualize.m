function visualize(inputArray, Fs, plotSize, sampleSize, eventVec, midFreqEst, bwEst, peakMatrix)
%This is used in one of testfunctions to show what the      

    % data plots
     subplot(4,1,1)
     FTplot(inputArray(1:plotSize),Fs,plotSize/sampleSize);
     ylim([0 Fs/2])
     set(gca,'Ydir','Normal')

     subplot(4,1,2)
     plot(peakMatrix)

     subplot(4,1,3)
     plot(bwEst)

     subplot(4,1,4)
     tas = (1:plotSize)./Fs;     
     hold on;
     plot(tas,inputArray(1:plotSize))
     % eventVec filtering
     tas2 = (1:length(eventVec))./Fs;     
     eventVec(eventVec==0) = nan ;
     plot(tas2,eventVec,'x')

end

