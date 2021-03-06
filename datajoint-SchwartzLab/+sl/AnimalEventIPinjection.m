%{
# IP injection of tamoxifen or some other substance
-> sl.AnimalEvent   # event
---
-> sl.InjectionSubstance
inject_time: time                    # time of day
concentration: float                 # mg per Kg body weight
notes: varchar(256)                  # injection notes (can include people who assisted)
(injected_by) -> sl.User(name)       # who did the injection
%}

classdef AnimalEventIPinjection < dj.Part
     properties(SetAccess=protected)
        master = sl.AnimalEvent
    end
end
