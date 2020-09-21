%{
# Image of a brain section
-> sl.Animal
image_id : int unsigned    #unique image id
---
fname : varchar(128) #image file name
scaleX : float                    # microns per pixel
scaleY : float                    # microns per pixel
section_orientation : enum('coronal', 'horizontal', 'sagittal') # orientation of section
section_coord : float             # bregma, lambda, etc
notes = NULL : varchar(256)       # image notes
-> sl.ImageChannelMap  # color and meaning of each channel
(imaged_by) -> sl.User(name) # who did the imaging
(sliced_by) -> sl.User(name) # who did the slice
%}

classdef BrainSectionImage < dj.Manual
    
end

% scaleX : float                    # microns per pixel
% scaleY : float                    # microns per pixel
