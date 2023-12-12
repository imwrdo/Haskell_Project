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
  | a == 100 = 0
  | b == 100 = countSolutions m (a + 1) (a + 1)
  | czyRownanie a b m = 1 + countSolutions m a (b + 1)
  | otherwise = countSolutions m a (b + 1)

main :: IO ()
main = do
  let n = 3
      m = znajdzM n
  putStrLn $ "Dla n = " ++ show n ++ " m = " ++ show m
