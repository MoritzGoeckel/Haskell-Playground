
nums1 = 2 : 3 : 4 : []
nums2 = [5, 6, 7]
-- nums3 = Cons 8 (Cons 9 (Cons 10))

nums4 = nums1 ++ nums2 
-- ++ nums3

main = do
  print nums4
  print (length nums4)
  print ("2nd: " ++ (show (nums4 !! 1)))
