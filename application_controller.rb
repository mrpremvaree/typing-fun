require 'bundler'
Bundler.require
require_relative 'models/exercises.rb'

class ApplicationController < Sinatra::Base
  
#   sentences = [
#     "fdsa asdf fdsa adsf sdaf ssda affs sdda fsda fdsf sfda dsds affa afsd fasd",
#     "jkl; ;lkj jlk; lkjk jjlk kklj lljk jlk; ljk; klj; kjlk jlkj ljkl jjll kkjj llkk lk;;",
#     "asdf jkl; aldk sjaj jskl dslk jfkd lsa; skdl ajlf flsk jdla alsj fkdj ksld ask; dad; fall",
#     "fgfg jhjh gghh gfds hjkl sdfg lkjh asgk lhks hlkh gsld algh khdl gas; had; hall;",
#     "dede kiki deki kide dead sell silk gisk died slid feds kild adek high sled eagh kjde",
#     "frfr juju frju jufr rufj rugh jhur gfru read suik luse jifa alsi ruid iegh jhre fsui lufe",
#     "frft ftds gtgt jujy jyjh hyhu frft jujy rest rust tred alas stel list just susy asky rusy",
#     "A”S: DLFK GJRU EITY AHDL SJFU D”EK GLAJ HUFR SAL” DIRT SLED",
#     "mjnj Mjnj mJnj mjNj mjnJ jkmn jhnj kjmj nest must mist Rest rent mint Last",
#     "Right Left Father Sister Study Learn Run Eat Drink Man Light The Same One.",
#     "fvfb bfvf vbgf fgbv fgjh fvjm fbjn fvjm fbjn frfv jujm ftfb jyjn beds vase nest must",
#     "dcdc k,k, asdc ;lk, edcd ik,k dcfv k,jm cat, fish, bird, net, sad, lick, red, cent, get",
#     "swsw lolo swlo desw kilo wowo slsl slow asks load walk work grow how; now; cow",
#     ". . . . , , , , ; ; : : ‘ ‘ ‘ ‘ . . ; ; , , “ “ “ “ ? ? ! ! Yes. “Hi” a key?  It fits. “It is.” Is it?",
#     "Aqaq ;p;p aq;p asaq ;l;p aqua plan play hope quit diet pray clap nope pals Iraq",
#     "azaz sxsx asdf aszx saxz xasz azsx xsaz Ajax Alex Fuzz fizz wax, six, fox buzz",
#     "qpwo z/x. qpz/ wox. ?./. qaza p;/; wsxs ol.l as;l pull zoo? poxx wolz owlz aqpa waxo plax",
#     "abcdefghijklmnopqrstuvwxyz Abcd Efjh Ijkl Mnop Qrst Uvwx Yzab Cdef Ghij Klmn",
#     "The quick brown fox jumps over the lazy dog.",
#     "If you type in rhythm and keep typing until the end, you will become a fast typist.",
#     "It is great to know how to type. I can now type all of the letters and most of the punctuation. I am working on my speed. I never, never look at my hands when I am typing. I keep going in rhythm and don’t stop between words. I only look at the screen or the paper I am typing from. I can fix my mistakes later after I have finished the paragraph."
# ]

  get '/' do
    erb :index
  end
    
  get '/lesson' do
    erb :index
  end
    
  post '/lesson' do
    binding.pry
    @sentence = sentences[params[:lesson_number].to_i]
    erb :lesson
  end
      
end