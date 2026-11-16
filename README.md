BERRYLIFE v2.0 — PWA com contas
===============================

Site: https://gabrielapiresfat-pixel.github.io/berrylife/

ARQUIVOS
- index.html     -> o app (telas, lógica, login e sincronização)
- config.js      -> endereço e chave pública do Supabase
- sw.js          -> service worker (offline + atualizações)
- manifest.json  -> instalação como app
- supabase.sql   -> estrutura do banco (tabela berry_state com RLS)
- icons/icon.svg  -> ícone do app

BANCO (Supabase, projeto "berrylife", região São Paulo, plano grátis)
- Cada usuário só lê e grava os próprios dados (regras RLS).
- Confirmação por e-mail ligada no cadastro.
- Projetos grátis pausam após 7 dias sem uso; o app continua funcionando
  offline e sincroniza quando o banco volta.

PUBLICAR UMA NOVA VERSÃO
1. Troque VERSION no sw.js (ex.: berrylife-v2.0.1).
2. Envie os arquivos alterados pro repositório no GitHub.
3. Em ~1 minuto o GitHub Pages atualiza o site.
