#include "createproject.h"
#include "ui_createproject.h"

CreateProject::CreateProject(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::CreateProject)
{
    ui->setupUi(this);
}

CreateProject::~CreateProject()
{
    delete ui;
}



void CreateProject::on_okButton_clicked()
{
//    projectsetting *prj = new projectsetting(this->ui->rowsSpinBox->value(), this->ui->columnsSpinBox->value());
    projectsetting *prj = new projectsetting(true, this->ui->rowsSpinBox->value(), this->ui->columnsSpinBox->value());
    this->hide();
    prj->show();
}