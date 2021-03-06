%{
# Genotyped animal
-> sl_test.Animal                                    # which animal
---
genotype_status: enum('Het', 'Homo', 'Non-carrier', 'Carrier', 'Unknown')  # positive means positive for multiple genes if double or triple trans., het or homo only if we know 
(genotyped_by) -> sl_test.User(name)  # who did it
%}

classdef AnimalGenotyped < dj.Part
    properties(SetAccess=protected)
        master = sl_test.Animal
    end
end
