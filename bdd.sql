--
-- code pour la création des tables
--








--
-- code pour la création des vues
--CREATE VIEW dernieresmontres as
--SELECT * FROM "Montre"
--ORDER BY date




--
-- code pour la création des policies
--CREATE POLICY "policy_name"
--ON public.Montre
--FOR SELECT USING (
--  true
--);

--CREATE POLICY "policy_name"
--ON public.Montre
--FOR INSERT 
--TO authenticated 
--WITH CHECK (true);

--CREATE POLICY "policy_name"
--ON public.Montre
--FOR UPDATE USING (
--  uid() = id_user
