%{
# IP injection of tamoxifen or some other substance
-> sl_test.AnimalEvent(inject_date='date')   # date the injection ocurred
---
-> sl_test.InjectionSubstance
inject_time: time                    # time of day
concentration: float                 # mg per Kg body weight
notes: varchar(256)                  # injection notes (can include people who assisted)
-> sl_test.User(injected_by='name')  # who did the injection

%}

classdef AnimalEventIPinjection < dj.Part
     properties(SetAccess=protected)
        master = sl_test.AnimalEvent
    end
end
