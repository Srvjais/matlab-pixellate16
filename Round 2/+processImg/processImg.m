function [] = processImg()
import processImg.*

setBBoxes();                        %set bboxarena , bboxplan ,indicator,
setPlans();     %remove bot          %creates array of plans centroides                                        
setMask();                          %set andMask using bboxes
end

