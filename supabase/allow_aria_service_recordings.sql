-- Aria and Brady save recordings to the same table, distinguished by name.
alter table public.bradymenu_service_recordings_v1
  drop constraint bradymenu_service_recordings_v1_name_check;

alter table public.bradymenu_service_recordings_v1
  add constraint bradymenu_service_recordings_v1_name_check
  check (name in ('Brady', 'Aria'));
