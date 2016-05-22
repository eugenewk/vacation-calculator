-- list of tuples

data Daylist a b = Daylist (a, b, b)
                   deriving (Show, Eq, Ord)

days = [1..365]
working = 1:(take 364 $ cycle [1,1,0,0,0,0,0])
datestring = "Friday":(take 364 $ cycle ["Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday"])

year :: [Integer] -> [Integer] -> [String] -> [(Integer, Integer, String)]
year (x:[]) (y:[]) (z:[]) = [(x, y, z)]
year (x:xs) (y:ys) (z:zs) = (x, y, z):(year xs ys zs)

