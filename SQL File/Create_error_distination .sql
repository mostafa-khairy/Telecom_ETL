CREATE TABLE Error_Distination (
    id int,
    imsi varchar(9),
    imei varchar(14),
    subscriber_id int,
    cell int,
    lac int,
    event_type varchar(2),
    event_ts datetime,
    tac varchar(8),
    snr varchar(8),
    ErrorCode int,
    ErrorColumn int
)


alter table [dbo].Error_Distination add audit_id int not null default(-1);

