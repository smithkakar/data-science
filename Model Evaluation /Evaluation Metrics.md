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
$\text{Accuracy} = \frac{\text{No. of correct predictions}}{\text{Total observations}}$

Accuracy makes no distinction between classes; correct answers for class 0 and class 1 are treated equally. A *confusion matrix* shows a more detailed breakdown of correct and incorrect classifications for each class.

### Per-Class accuracy
