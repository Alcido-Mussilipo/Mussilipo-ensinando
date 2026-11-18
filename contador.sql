-- Executar uma única vez no SQL Editor do projecto Supabase escolhido para a loja.
create table if not exists public.slimtea_visit_counter (
  id integer primary key check (id = 1),
  visits bigint not null default 0
);

insert into public.slimtea_visit_counter (id, visits)
values (1, 0)
on conflict (id) do nothing;

alter table public.slimtea_visit_counter enable row level security;

drop policy if exists "Public can read Slim Tea visit total" on public.slimtea_visit_counter;
create policy "Public can read Slim Tea visit total"
on public.slimtea_visit_counter for select
to anon, authenticated using (true);

create or replace function public.increment_slimtea_visits()
returns bigint
language plpgsql
security definer
set search_path = public
as $$
declare new_total bigint;
begin
  update public.slimtea_visit_counter
  set visits = visits + 1
  where id = 1
  returning visits into new_total;
  return new_total;
end;
$$;

revoke all on function public.increment_slimtea_visits() from public;
grant execute on function public.increment_slimtea_visits() to anon, authenticated;
grant select on public.slimtea_visit_counter to anon, authenticated;
