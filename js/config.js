// ============================================================
// CONFIGURAÇÃO DO SUPABASE
// Troque os dois valores abaixo pelos do SEU projeto Supabase:
// Painel do Supabase > Project Settings > API
//   - "Project URL"      -> SUPABASE_URL
//   - "anon public" key  -> SUPABASE_ANON_KEY
// ============================================================
const SUPABASE_URL = "https://hjkmfgnnqhvzktlrumcd.supabase.co";
const SUPABASE_ANON_KEY = "sb_publishable_kgHpU97i8TC03u_2x_uOIA_FbkUc6O8";

const supabaseClient = window.supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
