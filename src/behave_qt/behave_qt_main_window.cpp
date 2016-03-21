#include "behave_qt_main_window.h"

BehaveQtMainWindow::BehaveQtMainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    ui.setupUi(this);
    populateTree();
    establishConnections();
}

BehaveQtMainWindow::~BehaveQtMainWindow()
{

}

void BehaveQtMainWindow::establishConnections()
{
    connect(ui.behaveTree, SIGNAL(currentIDChanged(int)), ui.mainWindowStackedWidget, SLOT(setCurrentIndex(int)));
    connect(ui.fuelModelLineEdit, SIGNAL(textChanged(const QString&)), this, SLOT(fuelModelInputChanged(const QString&)));
}

void BehaveQtMainWindow::populateTree()
{
    QTreeWidgetItem *inputItem = new QTreeWidgetItem;
    inputItem->setText(0, tr("Input"));
    inputItem->setData(0, Qt::UserRole, BehaveMainWindowStackedWidget::MAIN_INPUT);
    ui.behaveTree->addTopLevelItem(inputItem);
    QTreeWidgetItem *surfaceInputItem = new QTreeWidgetItem;
    surfaceInputItem->setText(0, tr("Surface Fire Spread"));
    surfaceInputItem->setData(0, Qt::UserRole, BehaveMainWindowStackedWidget::SURFACE_INPUT);
    inputItem->addChild(surfaceInputItem);
    QTreeWidgetItem *FuelInputItem = new QTreeWidgetItem;
    FuelInputItem->setText(0, tr("Fuel"));
    FuelInputItem->setData(0, Qt::UserRole, BehaveMainWindowStackedWidget::FUEL_INPUT);
    surfaceInputItem->addChild(FuelInputItem);
}

// Slot fuelModelInputChanged
void BehaveQtMainWindow::fuelModelInputChanged(const QString& text)
{
    int fuelModelNumber = text.toInt();
    behave.setFirstFuelModelNumber(fuelModelNumber);
}


