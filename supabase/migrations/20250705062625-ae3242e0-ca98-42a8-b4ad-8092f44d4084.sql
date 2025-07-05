
-- Drop the user_info table and its policies
DROP POLICY IF EXISTS "Anyone can submit user info" ON public.user_info;
DROP POLICY IF EXISTS "Anyone can view user info" ON public.user_info;
DROP TABLE IF EXISTS public.user_info;
