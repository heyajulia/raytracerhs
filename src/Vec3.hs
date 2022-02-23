module Vec3 where

import GHC.Float (float2Int)
import Text.Printf (printf)

data Vec3 = Vec3
  { x :: Float,
    y :: Float,
    z :: Float
  }

type Point3 = Vec3

type Color = Vec3

putColor :: Color -> IO ()
putColor (Vec3 r g b) = do
  printf "%d %d %d\n" ir ig ib
  where
    ir = float2Int $ 255.999 * r
    ig = float2Int $ 255.999 * g
    ib = float2Int $ 255.999 * b
