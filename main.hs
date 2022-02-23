import Control.Monad (when)
import GHC.Float (float2Int, int2Float)
import System.IO (hPutStr, stderr)
import Text.Printf (printf)

imageHeight :: Int
imageHeight = 256

imageWidth :: Int
imageWidth = 256

printPixel :: (Int, Int) -> IO ()
printPixel (j, i) = do
  when (i == 0) $ hPutStr stderr "."

  printf "%d %d %d\n" r g b
  where
    r = float2Int $ 255.999 * (int2Float i / (int2Float imageWidth - 1.0))
    g = float2Int $ 255.999 * (int2Float j / (int2Float imageHeight - 1.0))
    b = float2Int $ 255.999 * 0.25

(✕) :: [a] -> [b] -> [(a, b)]
(✕) xs ys = [(x, y) | x <- xs, y <- ys]

main :: IO ()
main = do
  printf "P3\n%d %d\n255\n" imageHeight imageWidth

  mapM_ printPixel $ [imageWidth - 1, imageWidth - 2 .. 0] ✕ [0 .. imageHeight - 1]

  putStrLn ""
