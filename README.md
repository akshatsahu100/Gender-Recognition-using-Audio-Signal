# Gender-Recognition-using-Audio-Signal
Is a human’s voice “UNIQUE”? This is actually a good question with which most of us are really confused. Yes!! Our Voice is unique to us as much as our Fingerprint is unique to us. Because of this uniqueness, the human voice can be used for many recognition processes. One of the most heard recognition processes is “gender”. It is easier for an individual to recognize or identify a human gender by hearing the voice but the same is not always true for machines.

# About the project
We designed a program in MATLAB to find the Gender of the speaker by determining the frequency and comparing it with the given range of the male/female voice frequency.


# Method 1 : HIGHEST FREQUENCY COMPONENT METHOD
  # Methodology :-
  1) We will record an audio sample for 5s in MATLAB
  2) We extract the data from the audio sample in the form of array to be processed further
  3) We plot the data to get a visual overview of the audio sample.  
  4) We plot the Fourier Transform of the time domain data to start analyzing it in frequency domain.
  5) We find the highest amplitude in the fourier transform.
  6) Then we search for the frequency at which this highest amplitude occurred to get the frequency value.
  7) To calculate the exact frequency we multiply it with a factor according to our sampling frequency.
  8) Now we compare the obtained result with the threshold values to get the result.
  # Advantages :- 
  Accuracy : around 70%
  1) easy to understand and implement
  2) Doesn't get affected by gaussian noise beacuse it deals with the highest frequency component only which is not affected by the low frequency white guassian noise.
  # ShortComings
  1) HIGH PITCHED NOISE : Results get highly affected by high pitched squeaks because we are dealing with the highest frequency component and the squeaks are mostly higher           pitched than human voice. Squeaks can occur while we speak (we might not notice though) or due to some sudden high pitched noise due to any external factor.
  2) DATA INCONSISTENCY : It doesn’t deal with slight inconsistency with recorded data. Human voice contains many tones and pitches and thus at times even if our entire sample       audio is mostly male dominant but some tones might be a little high pitched which may affect the results.
  3) MIC QUALITY : While recording, many times the mic alters the actual frequency of the audio signal and this may cause the highest component to jump from the usual male pitch   range to female affecting our results.
 
# Method 2 : ZERO CROSSINGS METHOD

  ZERO CROSSINGS 
    As the name suggests it is the number of time the audio signal crosses zero mark.  


  # Methodology :-
  1) We will record an audio sample for 5s in MATLAB
  2) We extract the data from the audio sample in the form of array to be processed further
  3) We plot the data to get a visual overview of the audio sample.
  4) Count the number of zero crossings in the sample
  5) Calculate the frequency of the audio sample by dividing the sampling frequency by double of the quotient of the length of original signal and zero crossings.
  6) Compare the value of obtained frequency with the set threshold of male and female frequencies.
  
![image](https://user-images.githubusercontent.com/68183120/125321969-dbda2300-e35a-11eb-88ce-67db9e62f4f1.png)


  # Advantages :- 
  ACCURACY : We obtained a rough accuracy of over 90%.
  1) Handles squeaks very well.
  2) It gives us an estimate average frequency of multi tone Human Voice.
  3) Handles Data inconsistencies to some extent.
  4) Mic Quality doesn’t majorly affect the results.

  # Shortcomings
  1) White Gaussian Noise : The results are not resistant to White Gaussian Noise. 
      But this is not a major issue because there are various other techniques to reduce or remove White Gaussian Noise.
  2) This method is not suitable for processes which require determination of exact frequency components ( This doesn’t affect our project objective).





# CONCLUSION
The zero crossings method which works on averaging the frequency is well suited for the gender detection purpose and its drawbacks can be handled by using filters.
  


