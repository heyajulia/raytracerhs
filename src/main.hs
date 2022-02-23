import Control.Monad (when)
import GHC.Float (int2Float)
import System.IO (hPutStr, stderr)
import Text.Printf (printf)
import qualified Vec3 as V

imageHeight :: Int
imageHeight = 256

imageWidth :: Int
imageWidth = 256

printPixel :: (Int, Int) -> IO ()
printPixel (j, i) = do
  when (i == 0) $ hPutStr stderr "."

  V.putColor $ V.Vec3 (int2Float i / (int2Float imageWidth - 1.0)) (int2Float j / (int2Float imageHeight - 1.0)) 0.25

(✕) :: [a] -> [b] -> [(a, b)]
(✕) xs ys = [(x, y) | x <- xs, y <- ys]

main :: IO ()
main = do
  printf "P3\n%d %d\n255\n" imageHeight imageWidth

  mapM_ printPixel $ [imageWidth - 1, imageWidth - 2 .. 0] ✕ [0 .. imageHeight - 1]

  hPutStr stderr "\n"
