#include<iostream>

#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "exception_handler.h"

bool DmpFilter(void *ctx, _EXCEPTION_POINTERS * ptrs, MDRawAssertionInfo *info) {
	std::cerr << "Initial processing" << std::endl;
	return true;
}

bool DmpCallback(const wchar_t *path, const wchar_t *anotherPath, void *ctx, _EXCEPTION_POINTERS *ptrs, MDRawAssertionInfo *info, bool retValue) {
	std::cerr << "Final processing" << std::endl;
	return retValue;
}



MainWindow::MainWindow(QWidget *parent) :
QMainWindow(parent),
ui(new Ui::MainWindow)
{
	ui->setupUi(this);
	google_breakpad::ExceptionHandler handler(L"D:\\LastStand\\DieAgain\\dumps\\",
		DmpFilter,
		DmpCallback,
		0,
		google_breakpad::ExceptionHandler::HANDLER_ALL,
		MiniDumpNormal,
		L"",
		0 );

	volatile int* a = (int*)(NULL);
	*a = 1;
}

MainWindow::~MainWindow()
{
	delete ui;
}
