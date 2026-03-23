ask :: String -> IO ()
ask prompt =
 do
 putStrLn prompt
 line <- getLine
 if line == ""
    then ask (prompt ++ "!") --append ! to prompt each time empty string entered
    else if (line == "quit") then putStrLn("quitting..")
    else do
       putStrLn ("you said: " ++ reverse line)
       ask prompt
 
main :: IO ()
main =
 do
 let prompt = "please say something"
 ask prompt