-- ============================================================
-- ATUALIZAÇÃO 31 — AGENDA (tarefas/compromissos do dia a dia)
-- Rode isso depois da Atualização 30.
-- ============================================================

create table if not exists agenda (
  id uuid primary key default gen_random_uuid(),
  titulo text not null,
  descricao text,
  data date not null default current_date,
  hora time,
  status text not null default 'pendente' check (status in ('pendente','feito')),
  cliente_id uuid references clientes(id) on delete set null,
  excluido boolean not null default false,
  created_at timestamptz not null default now()
);

alter table agenda enable row level security;
drop policy if exists "admin tudo em agenda" on agenda;
create policy "admin tudo em agenda" on agenda
  for all using (meu_papel() = 'admin') with check (meu_papel() = 'admin');
