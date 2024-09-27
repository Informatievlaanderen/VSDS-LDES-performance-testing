create function on_page_member_inserting() returns trigger language plpgsql as $$
begin
  if (
    select pm.member_id 
    from page_members pm 
    where pm.member_id = NEW.member_id - 1
  ) = 0
  then 
    return null;
  end if;

  return NEW;
end
$$;

create trigger page_member_bi before insert on page_members
for each row execute procedure on_page_member_inserting();
