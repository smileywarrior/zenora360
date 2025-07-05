
-- Create a table to store user information from the form
CREATE TABLE public.user_info (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone TEXT,
  date_of_birth DATE,
  location TEXT,
  role TEXT,
  company TEXT,
  experience TEXT,
  skills TEXT,
  linkedin_url TEXT,
  github_url TEXT,
  interests TEXT,
  goals TEXT,
  availability TEXT,
  work_type TEXT,
  bio TEXT,
  referral_source TEXT,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

-- Enable Row Level Security (optional - you can make this public if you want all admins to see all data)
ALTER TABLE public.user_info ENABLE ROW LEVEL SECURITY;

-- Create a policy to allow anyone to insert data (for the form submissions)
CREATE POLICY "Anyone can submit user info" 
  ON public.user_info 
  FOR INSERT 
  WITH CHECK (true);

-- Create a policy to allow anyone to view data (you can restrict this later if needed)
CREATE POLICY "Anyone can view user info" 
  ON public.user_info 
  FOR SELECT 
  USING (true);
