*** Settings ***
Documentation      Locators for profile pages


*** Variables ***
${PROFILE_BTN}                        ru.afisha.android:id/profile
${ENTER_AND_REGISTRATION_BTN}         ru.afisha.android:id/itemLoginBtn
${ENTER_BTN}                          ru.afisha.android:id/socialButton
${REGISTRATION_BTN}                   //android.view.View[@content-desc="Регистрация"]
${ALREADY_REGISTRATION_BTN}           //android.widget.TextView[@text="Я уже зарегистрирован"]

${LOGIN_FIELD}                        //android.widget.EditText[@hint="Почта"]
${PASSWORD_FIELD}                     //android.widget.EditText[@hint="Пароль"]
${COMPLETE_REGISTRATION_BTN}                   //android.widget.Button[@text="Зарегистрироваться"]
${FINISH_REGISTRATION_FIELD}          //android.widget.TextView[@text="Завершение регистрации"]


