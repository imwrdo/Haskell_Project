
countSolutions :: Int -> IO Int
countSolutions m = do
    let solutions = [ (a, b) | a <- [m + 1 .. 2 * m], let b = (m * a) `div` (a - m), (m * a) `mod` (a - m) == 0 ]
    
    return $ length solutions

findMinM :: Int -> IO Int
findMinM n = findMinM' (n + 1)
  where
    findMinM' m = do
        solutionsCount <- countSolutions m
        if solutionsCount < n
            then findMinM' (m + 1)
            else return m

main :: IO ()
main = do
    putStrLn "Podaj liczbe naturalna n: "
    n <- readLn
    m <- findMinM n
    putStrLn $ "Dla n = " ++ show n ++ ", m = " ++ show m ++ " jest najmniejszym m, dla ktorego liczba rozwiazan jest >= n."
