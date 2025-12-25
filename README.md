# Customer Analytics for Churn Prediction

A comprehensive machine learning project focused on predicting customer churn using advanced analytics and predictive modeling techniques. This project was developed as part of AIT 582(003) by Team 4.

## 📋 Table of Contents

- [Overview](#overview)
- [Objectives](#objectives)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Methodology](#methodology)
- [Results](#results)
- [Project Deliverables](#project-deliverables)
- [Technologies Used](#technologies-used)
- [Contributors](#contributors)
- [License](#license)

## 🎯 Overview

This project analyzes customer data to predict churn, aiming to identify factors that influence customer retention and develop strategies to minimize churn rates. The analysis includes comprehensive data exploration, feature engineering, and the development of predictive models to forecast customer churn probability.

## 🔄 Workflow

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                        CUSTOMER CHURN PREDICTION WORKFLOW                    │
└─────────────────────────────────────────────────────────────────────────────┘

    ┌──────────────┐
    │   Raw Data   │
    │  Collection  │
    └──────┬───────┘
           │
           ▼
    ┌──────────────┐
    │ Data Cleaning│
    │  & Preprocessing│
    │  • Handle missing values│
    │  • Remove outliers│
    │  • Fix inconsistencies│
    └──────┬───────┘
           │
           ▼
    ┌──────────────────────┐
    │ Exploratory Data     │
    │ Analysis (EDA)       │
    │  • Statistical summary│
    │  • Data visualization│
    │  • Correlation analysis│
    │  • Churn distribution│
    └──────┬───────────────┘
           │
           ▼
    ┌──────────────────────┐
    │  Feature Engineering │
    │  • Create new features│
    │  • Encode categorical│
    │  • Scale/normalize│
    │  • Feature selection│
    └──────┬───────────────┘
           │
           ▼
    ┌──────────────────────┐
    │  Data Splitting      │
    │  • Train/Test Split  │
    │  • Validation Set    │
    └──────┬───────────────┘
           │
           ▼
    ┌─────────────────────────────────────┐
    │      Model Development               │
    │  ┌─────────────┐  ┌─────────────┐  │
    │  │  Logistic   │  │   Random    │  │
    │  │ Regression  │  │   Forest    │  │
    │  └─────────────┘  └─────────────┘  │
    │  ┌─────────────┐  ┌─────────────┐  │
    │  │    XGBoost  │  │     SVM     │  │
    │  └─────────────┘  └─────────────┘  │
    │  • Handle class imbalance          │
    │  • Hyperparameter tuning           │
    └──────┬──────────────────────────────┘
           │
           ▼
    ┌──────────────────────┐
    │  Model Evaluation    │
    │  • Accuracy          │
    │  • Precision/Recall  │
    │  • F1-Score          │
    │  • ROC-AUC           │
    │  • Confusion Matrix   │
    └──────┬───────────────┘
           │
           ▼
    ┌──────────────────────┐
    │  Model Selection     │
    │  • Compare models    │
    │  • Select best model │
    └──────┬───────────────┘
           │
           ▼
    ┌──────────────────────┐
    │  Insights &          │
    │  Recommendations     │
    │  • Key churn factors │
    │  • Risk segmentation │
    │  • Retention strategies│
    └──────┬───────────────┘
           │
           ▼
    ┌──────────────────────┐
    │  Deployment &        │
    │  Business Impact     │
    │  • Predict churn     │
    │  • Target at-risk    │
    │  • Reduce churn rate │
    └──────────────────────┘
```

## 🎯 Objectives

- **Predict Customer Churn**: Build accurate machine learning models to predict which customers are likely to churn
- **Identify Churn Factors**: Analyze and identify key factors that contribute to customer churn
- **Data-Driven Insights**: Provide actionable insights to help businesses retain customers
- **Model Evaluation**: Compare and evaluate different machine learning algorithms for churn prediction
- **Business Impact**: Develop strategies to reduce churn rates and improve customer retention

## 📁 Project Structure

```
Customer-Analytics-for-Churn-Prediction/
│
├── README.md                                    # Project documentation
├── AIT 582(003)_Team 4_final_model.ipynb       # Main analysis notebook
├── AIT 582(003)_Team 4_final_model.html        # HTML version of the notebook
├── AIT582_003_FinalProjectWebsite_Team4.html   # Project website
├── AIT582_003_TEAM4_FINALPPT.pptx              # Presentation slides
├── Final Project Paper_AIT582(003)_Team4.docx  # Final project paper
├── data/                                        # Dataset files (if applicable)
│   ├── raw/                                    # Raw data files
│   └── processed/                              # Processed/cleaned data
└── requirements.txt                             # Python dependencies
```

## 🚀 Getting Started

### Quick Start

To quickly explore the project results:

1. **View the HTML Report**: Open `AIT 582(003)_Team 4_final_model.html` in your web browser to review the comprehensive analysis
2. **Explore the Project Website**: Open `AIT582_003_FinalProjectWebsite_Team4.html` in your web browser for a summarized view of the project
3. **Review the Presentation**: Open `AIT582_003_TEAM4_FINALPPT.pptx` using any compatible presentation software

## 📦 Prerequisites

Before running the analysis notebook, ensure you have:

- **Python 3.8 or higher**
- **pip** (Python package manager)
- **Jupyter Notebook** or **JupyterLab**

## 🔧 Installation

### Step 1: Clone the Repository

```bash
git clone https://github.com/manasa123104/Customer-Analytics-for-Churn-Prediction.git
cd Customer-Analytics-for-Churn-Prediction
```

### Step 2: Create Virtual Environment (Recommended)

```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# On Windows:
venv\Scripts\activate
# On macOS/Linux:
source venv/bin/activate
```

### Step 3: Install Dependencies

```bash
# Install Jupyter Notebook
pip install notebook

# Install required libraries
pip install pandas numpy scikit-learn matplotlib seaborn

# Or install from requirements.txt (if available)
pip install -r requirements.txt
```

## 💻 Usage

### Running the Analysis Notebook

1. **Launch Jupyter Notebook**:
   ```bash
   jupyter notebook
   ```

2. **Open the Notebook**:
   - Navigate to the project directory in Jupyter
   - Open `AIT 582(003)_Team 4_final_model.ipynb`

3. **Execute the Analysis**:
   - Run cells sequentially to execute the analysis
   - Review outputs, visualizations, and model results

### Example Workflow

```python
# Example: Load and explore customer data
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

# Load dataset
df = pd.read_csv('data/customer_data.csv')

# Basic exploration
print(df.head())
print(df.info())
print(df.describe())

# Check for churn distribution
churn_counts = df['churn'].value_counts()
print(churn_counts)
```

## 🔬 Methodology

The project follows a systematic approach to churn prediction:

1. **Data Collection**: Gather customer data including demographics, usage patterns, and transaction history
2. **Data Cleaning**: Handle missing values, outliers, and data inconsistencies
3. **Exploratory Data Analysis (EDA)**: 
   - Analyze customer demographics and behavior patterns
   - Identify correlations between features and churn
   - Visualize data distributions and relationships
4. **Feature Engineering**: 
   - Create meaningful features from raw data
   - Handle categorical variables
   - Scale and normalize features
5. **Model Development**: 
   - Train multiple machine learning models (e.g., Logistic Regression, Random Forest, XGBoost)
   - Apply techniques to handle class imbalance if present
6. **Model Evaluation**: 
   - Assess model performance using metrics like accuracy, precision, recall, F1-score, and ROC-AUC
   - Compare different models and select the best performer
7. **Insights Generation**: 
   - Identify key churn indicators
   - Provide actionable recommendations for customer retention

## 📊 Results

The analysis provides comprehensive insights into customer behavior and identifies key factors contributing to churn. Key findings include:

- **Churn Rate Analysis**: Understanding the overall churn rate and its distribution
- **Key Churn Indicators**: Factors that most significantly predict customer churn
- **Model Performance**: Evaluation metrics for the predictive models
- **Business Recommendations**: Actionable strategies to reduce churn

Detailed results, including data visualizations and model evaluations, are available in:
- The HTML report: `AIT 582(003)_Team 4_final_model.html`
- The project website: `AIT582_003_FinalProjectWebsite_Team4.html`
- The presentation slides: `AIT582_003_TEAM4_FINALPPT.pptx`

## 📄 Project Deliverables

This project includes the following deliverables:

1. **Analysis Notebook** (`AIT 582(003)_Team 4_final_model.ipynb`): Complete data analysis and model development
2. **HTML Report** (`AIT 582(003)_Team 4_final_model.html`): Interactive HTML version of the analysis
3. **Project Website** (`AIT582_003_FinalProjectWebsite_Team4.html`): Web-based project summary
4. **Presentation** (`AIT582_003_TEAM4_FINALPPT.pptx`): PowerPoint presentation of findings
5. **Project Paper** (`Final Project Paper_AIT582(003)_Team4.docx`): Comprehensive project documentation

## 🛠️ Technologies Used

- **Python**: Primary programming language
- **Pandas**: Data manipulation and analysis
- **NumPy**: Numerical computing
- **Scikit-learn**: Machine learning algorithms and model evaluation
- **Matplotlib**: Data visualization
- **Seaborn**: Statistical data visualization
- **Jupyter Notebooks**: Interactive development environment

## 👥 Contributors

- **Team 4** - AIT 582(003)
- [Manasa](https://github.com/manasa123104)

## 📚 Course Information

- **Course**: AIT 582(003)
- **Project**: Customer Analytics for Churn Prediction
- **Team**: Team 4

## 📄 License

This project is open source and available for educational purposes.

## 🙏 Acknowledgments

Special thanks to:
- Team members and collaborators
- Course instructors and mentors
- All contributors who helped make this project possible

## 📧 Contact

For questions, suggestions, or collaborations, please:
- Open an issue in this repository
- Contact the project maintainers

---

**Note**: This project was developed for academic purposes as part of AIT 582(003). For detailed analysis results and findings, please refer to the HTML report, project website, or presentation slides included in this repository.
