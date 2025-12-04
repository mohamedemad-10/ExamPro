-- Allow admins to delete user profiles
CREATE POLICY "Admins can delete user profiles"
ON public.profiles
FOR DELETE
USING (has_role(auth.uid(), 'admin'::app_role));

-- Allow admins to delete user roles
CREATE POLICY "Admins can delete user roles"
ON public.user_roles
FOR DELETE
USING (has_role(auth.uid(), 'admin'::app_role));

-- Allow admins to delete user exam attempts
CREATE POLICY "Admins can delete user exam attempts"
ON public.user_exam_attempts
FOR DELETE
USING (has_role(auth.uid(), 'admin'::app_role));

-- Allow admins to delete user answers
CREATE POLICY "Admins can delete user answers"
ON public.user_answers
FOR DELETE
USING (has_role(auth.uid(), 'admin'::app_role));
