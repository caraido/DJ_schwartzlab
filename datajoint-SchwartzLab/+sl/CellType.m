%{
# Cell type
cell_type_id : smallint unsigned auto_increment
---
name_full : varchar(64)                  # full cell type name
name_short : varchar(32)                 # short name
name_for_var : varchar(32)               # name in form suitable for variables: no spaces or periods
cell_class : enum('RGC','bipolar','amacrine','horizontal','photoreceptor','other neuron','glia','pericyte','RPE cell','unknown','other')
tags = NULL: longblob 
notes = NULL: varchar(128)              # notes about this cell type
%}
classdef CellType < dj.Lookup
    
end
