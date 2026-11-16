-- BerryLife: estrutura do banco (já aplicada no projeto Supabase "berrylife")
create table if not exists public.berry_state (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.berry_state enable row level security;
grant select, insert, update, delete on public.berry_state to authenticated;
create policy "ler os proprios dados" on public.berry_state for select to authenticated using ((select auth.uid()) = user_id);
create policy "inserir os proprios dados" on public.berry_state for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "atualizar os proprios dados" on public.berry_state for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "apagar os proprios dados" on public.berry_state for delete to authenticated using ((select auth.uid()) = user_id);
