# Basics of Model Evaluation

## Types of  Model Evaluation

- Offline Evaluation
- Online Evaluation

### Offline and Online Evaluation

*Offline evaluation* measures offline metrics of the prototyped model on historical data (and sometimes on live data). This might use one of the metrics such as accuracy or precision-recall.

*Online evaluation* measures live metrics of the deployed model on live data. This might measure **business metrics** such as customer lifetime value, which may not be available on historical data but are closer to what business really cares about.

In practice, the distribution of data changes over time, sometimes drastically. This is called *distribution drift*. Example: The trending topics in news change every data, every hour.

One way to detect distribution drift is to track the model's performance on the *validation metric* on live data. Monitoring is often done "offline" from the production environment.

## Evaluation Metrics

### Accuracy

<div align="center"><img style="background: white;" src="https://render.githubusercontent.com/render/math?math=\text{Accuracy} = \frac{\text{No. of correct predictions}}{\text{Total observations}}"></div>

Accuracy makes no distinction between classes; correct answers for class 0 and class 1 are treated equally. A *confusion matrix* shows a more detailed breakdown of correct and incorrect classifications for each class.

### Per-Class Accuracy

Accuracy is known as a micro-average and average per-class accuracy is a macro-average. When the classes are imbalanced, we should look at the average as well as the individual per-class accuracy.

### Log-Loss

If the raw output of the classifier is a numeric probability instead of a class label 0 or 1, then log-loss can be used.

Mathematically, log-loss for a binary classifier looks like:

<div align="center"><img style="background: white;" src="https://render.githubusercontent.com/render/math?math=\text{Log-loss} = -\frac{1}{N}\sum_{i=1}^{N} y_{i} log p_{i} %2B (1-y_{i})log(1-p_{i})"></div>

This is linked to information theory: log-loss is the cross entropy between the distribution of the true labels and the predictions, and is very closely related to relative entropy.

Entropy measures the unpredictability of something. Cross entropy incorporates the entropy of the true distribution. So log-loss is an information-theoretic measure to gauge the "extra noise" that comes from using a predictor as opposed to the true labels. By minimizing the cross entropy, we maximize the accuracy of a classifier.

### AUC

AUC is area under the receiver operating characteristic (ROC) curve. It is one way to summarize the ROC curve into a single number, so that it can be compared easily.

The marketing analytics community uses lift and gain charts as variations. The medical modeling community often looks at odds ratios. The statistics community examines sensitivity and specificity.
