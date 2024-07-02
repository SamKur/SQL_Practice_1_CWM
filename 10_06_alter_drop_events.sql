SHOW EVENTS;

DROP EVENT if EXISTS yearly_delete_stale_audit_rows;

ALTER EVENT yearly_delete_stale_audit_rows ENABLE ; -- OR disable

