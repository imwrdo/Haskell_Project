czyRownanie :: Int -> Int -> Int -> Bool
czyRownanie a b m = (a + b) * m == a * b

znajdzM :: Int -> Int
znajdzM n = znajdzM' 1
  where
    znajdzM' m
      | countSolutions m 1 1 >= n = m
      | otherwise = znajdzM' (m + 1)

countSolutions :: Int -> Int -> Int -> Int
countSolutions m a b
  | a == 1000 = 0
  | b == 1000 = countSolutions m (a + 1) (a + 1)
  | otherwise =
    let result = if czyRownanie a b m then 1 else 0
    in result + countSolutions m a (b + 1)


main :: IO ()
main = do
    putStrLn "Podaj liczbe n:"
    input <- getLine
    let n = read input :: Int
        m = znajdzM n
    putStrLn $ "Dla n = " ++ show n ++ " m = " ++ show m
