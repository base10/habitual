 Schema / Data modeling / Relations

### User

- has many schedules
- has many habits
- name
- email
- admin bit of some manner
    - Bypassing for now
- password digest (default Rails way)


### Habit

- belongs to user
- belongs to schedule

- name
- notes

### Schedule

Default these for now, there will be a global set for the time being

- active: boolean
- name (should largely match kind)
- kind
  - Daily
  - Weekly
  - Ad hoc
  - Days of Week: which days
- pattern

### Occurrence

- Belongs to habit
- Done: boolean
- notes

- Schedule
    - active?
- Instance
    - notes
