create table app_users(id uuid primary key default gen_random_uuid(),username text unique,pin text,role text);
create table memo_batches(id uuid primary key default gen_random_uuid(),memo_name text,uploaded_at timestamptz default now());
create table children(id uuid primary key default gen_random_uuid(),memo_batch_id uuid,child_id text,child_name_kh text,child_name_en text,village text,budget numeric);
create table purchase_items(id uuid primary key default gen_random_uuid(),child_id text,item_name text,quantity numeric,unit text,remark text,created_by text,created_at timestamptz default now());
