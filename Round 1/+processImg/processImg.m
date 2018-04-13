function [] = processImg()
import processImg.*

setBBoxes();                        %set bboxarena , bboxplan ,indicator,
setPlans();                         %creates array of plans centroides                                        
setMask();                          %set andMask using bboxes
end

