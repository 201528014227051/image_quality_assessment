im = imread('./huo.jpg');
im = imnoise(im,'gaussian',0,10);
features = bliinds2_feature_extraction(im);
features_pre = reshape(features,[1,24]);
predicted_score = bliinds_prediction(features_pre);
disp(predicted_score);